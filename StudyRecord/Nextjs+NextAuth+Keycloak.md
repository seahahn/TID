# Nextjs+NextAuth+Keycloak

## 준비물

- Next.js 클라이언트 with NextAuth
- Keycloak 서버

## 준비 과정

- 아래 과정은 구체적인 구현 및 작동을 위한 기본적인 과정이라고 생각하면 됨

1. Next.js 프로젝트 생성

- 자세한 과정 생략

2. package 설치

```json
  yarn add next-auth
  <!-- or  -->
  npm i next-auth
```

3. Next.js 프로젝트에 NextAuth 적용

- 아래 NextAuth 공식 문서 참고
- [NextAuth.js Docu - Getting Started](https://next-auth.js.org/getting-started/example)

4. Keycloak 서버 실행 (using Docker Compose)

```yml
version: "3"

volumes:
  postgres_data:
    driver: local

services:
  postgres:
    image: postgres
    container_name: user_db
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
    environment:
      POSTGRES_DB: keycloak
      POSTGRES_USER: keycloak
      POSTGRES_PASSWORD: password
  keycloak:
    image: quay.io/keycloak/keycloak:18.0.0-legacy
    container_name: keycloak
    environment:
      DB_VENDOR: POSTGRES
      DB_ADDR: postgres
      DB_DATABASE: keycloak
      DB_USER: keycloak
      DB_SCHEMA: public
      DB_PASSWORD: password
      KEYCLOAK_USER: admin
      KEYCLOAK_PASSWORD: admin
    volumes:
      # 커스텀 테마 적용 시
      - ./theme:/opt/jboss/keycloak/themes
    ports:
      - 8080:8080
    depends_on:
      - postgres
```

5. Keycloak 서버 설정

- Realm 생성 (기존 Realm 파일 export한 것을 import 가능)
- Client 생성
- (테스트용) User 생성

---

## 로그인 / 로그아웃

1. [...nextauth].ts 설정

```typescript
import { authClientId, authClientSecret, authIssuer, authRealm, authServerUrl, publicWebUrl } from "@/constants/envs";
import { consolelog } from "@/tools/utils";
import NextAuth from "next-auth";
import KeycloakProvider from "next-auth/providers/keycloak";

export default NextAuth({
  providers: [
    KeycloakProvider({
      clientId: authClientId,
      clientSecret: authClientSecret,
      issuer: authIssuer,
      idToken: true,
    }),
  ],
  callbacks: {
    async signIn({ user, account, profile, email, credentials }) {
      return true;
    },
    async redirect({ url, baseUrl }) {
      // redirect할 URL이 별도로 지정된 경우, 해당 URL으로 redirect함
      const targetUrl = url === baseUrl ? baseUrl : url;
      return targetUrl;
    },
    async session({ session, token, user }) {
      // jwt에서 보낸 token이 여기로 전달됨
      session.accessToken = token.accessToken;
      session.refreshToken = token.refreshToken;
      session.idToken = token.idToken;
      session.userId = token.sub;

      return session;
    },
    async jwt({ token, user, account, profile, isNewUser }) {
      if (account) {
        token.accessToken = account.access_token;
        token.refreshToken = account.refresh_token;
        // idToken은 Keycloak 로그아웃 시 필요
        // (id_token_hint 쿼리 파라미터)
        token.idToken = account.id_token;
      }
      return token;
    },
  },
});
```

2. 로그인 버튼 만들기

```typescript
// 내용 일부 생략
import { signIn } from "next-auth/react";

<button
  type="button"
  onClick={() => {
    signIn("keycloak", {
      callbackUrl: "로그인_처리_후_이동할_URL",
    });
  }}>
  로그인
</button>;
```

- 버튼을 누르면 Keycloak 로그인 화면이 출력됨
- Keycloak 로그인이 완료되면 callbackUrl로 이동

3. 로그인 이후 화면(callbackUrl 결과)

```typescript
// 내용 일부 생략
import { useSession } from "next-auth/react";

// useSession 이용하여 NextAuth의 session 데이터를 가져옴
const { data: session } = useSession();

// 아래에 보이는 session 내부의 값들은 [...nextauth].ts에서 설정 가능
if (session) {
  const { accessToken, refreshToken, idToken, userId } = session;
  typeof accessToken === "string" &&
    typeof refreshToken === "string" &&
    typeof idToken === "string" &&
    typeof userId === "string" &&
    handleSignIn(accessToken, refreshToken, idToken, userId);
}
```

4. 로그아웃 버튼 만들기

```typescript
// 내용 일부 생략

const onClickLogout = async () => {
  if (session) {
    // signOut 함수는 Next Auth에서 제공하는 함수
    // 이 함수는 세션을 삭제하고 로그아웃 처리를 한다.
    // 단, Keycloak 세션은 별개이므로 callbackUrl을 이용하여 따로 로그아웃 처리를 한다.
    await signOut({
      callbackUrl: logoutRedirectUrl(idToken),
    });
  }
};

const logoutRedirectUrl = (idToken: string) => {
  return `${authServerUrl}/realms/${authRealm}/protocol/openid-connect/logout?post_logout_redirect_uri=${로그아웃_후_이동시킬_URL}&id_token_hint=${idToken}`;
};

<S.MenuContainer onClick={onClickLogout}>
  <S.MenuText>로그아웃</S.MenuText>
</S.MenuContainer>;
```

---

<참고 자료>

- [NextAuth.js Docu - Getting Started](https://next-auth.js.org/getting-started/example)
- [NextAuth Docu - Callbacks](https://next-auth.js.org/configuration/callbacks)
- [Next-Auth signOut() does not end Keycloak session.](https://www.reddit.com/r/nextjs/comments/redv1r/nextauth_signout_does_not_end_keycloak_session/)
