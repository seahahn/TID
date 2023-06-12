# CSS 레이아웃 설계하기(부모요소, 자식요소, 형제요소)

## semantic tag 사용법

- ![시멘틱 태그](https://cdn.inflearn.com/public/files/posts/e87a1caf-3e63-45b2-891c-fc4c274f4012/image.png)
- main은 무조건 사용하는건 아니고, 한 겹 더 감쌀 필요가 있을 때 사용
- div는 article 내부에 세부적인 레이아웃 및 컨텐츠를 만들 때 사용

---

## float 이용한 요소 수평 배치 주의사항

### 두 개의 요소에 float 속성 지정하여 수평 배치하기

- 좌: logo / 우: navi
- ![CSS](https://cdn.inflearn.com/public/files/posts/debbcc3e-e518-4fef-b48d-ed1e64624ffe/image.png)
- ![브라우저](https://cdn.inflearn.com/public/files/posts/5e1c1a40-3f45-4894-a811-0ee4c14bb86d/image.png)
- 둘 다 float 속성 지정하면 수평으로 나란히 배치됨

### 하나만 float 속성을 지정한 경우

- ![CSS2](https://cdn.inflearn.com/public/files/posts/b6a2b07c-f7bf-41a3-b7fe-17d9bf16f5b0/image.png)
- ![브라우저2](https://cdn.inflearn.com/public/files/posts/c32d315b-0205-4333-a910-4cf8b7732b47/image.png)
- 보이는 것처럼 위치가 틀어짐
