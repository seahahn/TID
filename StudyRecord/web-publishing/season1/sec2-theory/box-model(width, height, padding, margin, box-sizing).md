# CSS 박스모델(width, height, padding, margin, box-sizing)

## margin, padding

### 크기 지정

- 1개: 상우하좌
- 2개: 상하 좌우
- 4개: 상 우 하 좌

## box-sizing

- box-sizing 미적용
  <div style="width: 600px; heigth: 50px; padding: 20px; border: 10px solid red; text-align: center; line-height: 50px; font-size:30px;">
  box
  </div>

  ```html
  <div style="width: 600px; heigth: 50px; padding: 20px; border: 10px solid red; text-align: center; line-height: 50px; font-size:30px;">box</div>
  ```

- changed width value = 660px

  - = initial width 600px + padding 20px*2 + border 10px*2

- box-sizing 적용

  <div style="width: 600px; heigth: 50px; padding: 20px; border: 10px solid red; text-align: center; line-height: 50px; font-size:30px; box-sizing: border-box;">
    box
    </div>

  ```html
  <div
    style="width: 600px; heigth: 50px; padding: 20px; border: 10px solid red; text-align: center; line-height: 50px; font-size:30px; box-sizing: border-box;"
  >
    box
  </div>
  ```

- width value = 600px
  - 초기 width 값에 추가된 padding, border 값 모두 포함
- box-sizing: border-box => 최초에 적용한 width, height값을 유지하도록 만듦
