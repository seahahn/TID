# CSS 포지션 속성 완벽하게 이해하기

## 1. 부모요소 vs 자식요소

- ![r&a](https://cdn.inflearn.com/public/files/posts/f48ebfd7-aed6-4838-a30b-814c6edb453c/image.png)
- 자식 요소를 부모 요소 내에서 원하는 위치에 배치하기 위해 absolute 사용
- position: absolute 없이 left, right, top, bottom 속성 사용 시 아무 소용 없음
- 자식 요소에 position: absolute 사용 시 부모 요소에 position: relative를 주지 않으면 body 태그를 부모 요소로 간주함

## 2. 자동으로 수평 수직 중앙 위치시키기

- ![h&v](https://cdn.inflearn.com/public/files/posts/27bd4a15-85ce-490d-b88b-21e1b9d5933c/image.png)
- ![주의](https://cdn.inflearn.com/public/files/posts/d67d7bfa-6fd6-4b37-814d-6a879fb0b913/image.png)

position: absolute;
top: 50%;
left: 50%;
적용 시
![5050](https://cdn.inflearn.com/public/files/posts/fffa8126-1f5c-4789-aa39-e4f4f8b304a3/image.png)

transform: translate(-50%, -50%)
(transform 속성 적용된 요소의 크기를 기준으로 50%씩 상, 좌 방향 각각 이동시킴)
까지 적용 시
![-50](https://cdn.inflearn.com/public/files/posts/c9197801-cd7a-40fb-b2f3-79ccb3c2692d/image.png)

## 3. 부모요소 밖으로 위치시키기

- ![부모밖배치](https://cdn.inflearn.com/public/files/posts/e0c2d292-cfe8-40d3-9a77-e527922d3f80/image.png)
