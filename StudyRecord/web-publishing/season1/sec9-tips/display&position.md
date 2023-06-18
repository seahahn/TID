# display 속성의 이해(feat. position)

## 인라인요소

- 크기값을 지정못함
- 한줄에 여러개 배치
- 상하마진 못가짐
- 기본 너비값은 컨텐츠의 너비값
- span, a, small, em, b, br, audio, video, s, u, mark, q, strong, sup, sub, i, big, del, label

## 블록요소

- 크기값을 지정할 수 있음
- 한줄에 한개만 배치
- 상하좌우마진 모두 가짐
- 기본 너비값은 100%
- div, ul, ol, li, h, hr, form, dl, dt, dd, p, table, header, article, footer, section, nav, details, summury, center,

## 인라인블록요소

- 크기값을 지정할 수 있음
- 한줄에 여러개 배치
- 상하좌우마진 모두 가짐
- 기본 너비값은 컨텐츠의 너비값
- img, input, button, fontawesome icon

---

- 어떤 요소이건 position: absolute 또는 fixed가 적용되면 인라인블록으로 변함.
- before after는 기본적으로 인라인요소
