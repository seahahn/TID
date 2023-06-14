# CSS 박스모델(box-shadow, text-shadow)

## box-shadow

- box-shadow: inset offset-x offset-y blur color

- 속성

  - inset: 안쪽 그림자
  - offset-x: 수평(좌->우) 그림자 offset 값
  - offset-y: 수직(상->하) 그림자 offset 값
  - blur: 그림자 가장자리 부드럽게 처리하는 강도(기본값=0)
  - color: 안 넣으면 박스 색 따라감

- 특징
  - 콤마(,)를 이용하여 여러 개의 그림자 적용 가능
    - ![콤마 사용](https://cdn.inflearn.com/public/files/posts/b868bf9e-4d0e-41d1-b115-e8a31fc99d69/image.png)
  - ![+값](https://cdn.inflearn.com/public/files/posts/c525b964-3aad-4bf6-ae2f-e405cb72fc9e/image.png)
  - ![-값](https://cdn.inflearn.com/public/files/posts/14a8a12f-d4cc-4810-a679-3bcd03d67a63/image.png)

## text-shadow

- 속성
  - ![속성](https://cdn.inflearn.com/public/files/posts/23dd1bf4-11f5-40a1-b6d4-a3ec8662b9ec/image.png)
  - text-shadow는 inset 없음
