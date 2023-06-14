# CSS 박스모델(border, border-radius)

## border-radius

- 적용 순서: (좌상부터) 상 우 하 좌 => 좌상 우상 우하 좌하
  -ex. border-radius: 10px 20px 30px 40px
  <div style="border-radius: 10px 20px 40px 60px; border: 1px solid black; width: 200px; height: 200px;">
    box
  </div>
