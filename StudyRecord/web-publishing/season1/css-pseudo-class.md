# CSS 필수 가상클래스

## 1. 마우스 오버 효과(hover, transition)

![hover&transition](https://cdn.inflearn.com/public/files/posts/385a254e-4628-4e90-8902-53630c6f6cf2/image.png)

### 주의사항

- ![주의](https://cdn.inflearn.com/public/files/posts/5311ba19-3b3f-4ea5-a6af-90e369b10efb/image.png)
- ![코드](https://cdn.inflearn.com/public/files/posts/49f1f5eb-3764-4e33-bbcb-b1c568c69c44/image.png)

---

## 2. 순서를 만드는 가상클래스 (nth-child, nth-of-type)

### nth-child

![order-pseudo-class](https://cdn.inflearn.com/public/files/posts/2d8b6973-ded5-4e2d-ba86-245ce29b5a80/image.png)

- 순서 가상클래스 사용 목적: 클래스 이름을 주지 않고 요소를 선택하기 위함
  - 안 그러면 아래처럼 하나씩 클래스명 지정해줘야 함
  - ![each-classname](https://cdn.inflearn.com/public/files/posts/97baf685-3add-480b-a440-bbaee888b1b6/image.png)
- ![nth-child](https://cdn.inflearn.com/public/files/posts/39df65e2-2cff-446f-ae6d-cac576b7cafc/image.png)
- nth-child는 요소 태그를 구분하지 않음

### nth-of-type

- 태그 종류를 체크함
- ![nth-of-type](https://cdn.inflearn.com/public/files/posts/fd1ecdd7-7036-4304-9432-f51f95b59778/image.png)
- 위 예시의 경우 div 중 몇 번째 태그인지 체크해줌

---

## 3. 순서를 만드는 가상클래스 (first-child, last-child)

![first&last](https://cdn.inflearn.com/public/files/posts/c2e6978e-a529-425d-ba9f-8002f8442292/image.png)
