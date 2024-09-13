// 定义枚举值--- 当前的下标
// enum Direction {
//   Up = 10,
//   Down,
//   Left,
//   Right,
// }

// enum Direction {
//   Up = 1,
//   Down = 2,
//   Left = 3,
//   Right = 4,
// }

enum Direction {
  Up = "up1",
  Down = "down1",
  Left = "left1",
  Right = "right1",
}

console.log(Direction.Up); // 1
console.log(Direction.Down); // 2
console.log(Direction.Left); // 3
console.log(Direction.Right); // 4

function changeDirection(direction: Direction) {
  if (direction === Direction.Up) {
    // 1
    // 向上的逻辑操作
  } else if (direction === Direction.Down) {
    // 2
    // 向下的逻辑操作
  } else if (direction === Direction.Left) {
    // 3
    // 向左的逻辑操作
  } else if (direction === Direction.Right) {
    // 4
    // 向右的逻辑操作
  }
}

changeDirection(1);

function changeDirection1(direction: Direction) {
  if (direction === Direction.Up) {
    // 1
    // 向上的逻辑操作
  } else if (direction === Direction.Down) {
    // 2
    // 向下的逻辑操作
  } else if (direction === Direction.Left) {
    // 3
    // 向左的逻辑操作
  } else if (direction === Direction.Right) {
    // 4
    // 向右的逻辑操作
  }
}

export {};
