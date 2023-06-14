# HTML 요소 가로 배치하기(float, overflow, clear, inline-block)

## float

### 속성

- float:none => (default) float 적용 안함
- float:left => 요소를 컨테이너 왼쪽 배치
- float:right => 요소를 컨테이너 오른쪽 배치
- margin: auto => 요소를 중앙에 배치
  - 인라인 & 인라인-블록 요소는 적용 X
  - 블록 요소만 적용됨

### 특징

- 자식 요소에 float 속성이 사용되면 부모는 자식이 없다고 판단해 높이값을 잃음

#### 자식에 float 사용 시 부모 요소의 높이를 주는 방법

- 부모에 높이(height) 지정
  - 자식 높이에 따라 부모 높이가 조정되지 않음
- overflow: hidden 적용
  - 자식 높이에 따라 부모 높이가 조정됨

#### 인라인 & 인라인-블록 요소를 중앙에 보내는 방법

- 부모 요소에 text-align: center 적용

## clear

- float 속성이 적용되면 다음 요소가 float 속성을 상속받음
- 이를 해제하기 위한 속성

### 속성

- left
- right
- both => 왼쪽 또는 오른쪽 배치된 모든 float 속성 상속을 해지. 보통 이를 사용함.

## CSS로 HTML 요소 가로 배치하기(float, overflow, box-sizing & inline-block)

- 1. float와 overflow 사용
  - 가로 배치되는 요소 모두가 동일한 높이여야 함(단 1px라도 차이가 나면 안됨)
- 2. display: inline-block 으로 배치
