# Programming Fundamentals: Input, Logic, and Data Structures

---

## 🔹 Capturing User Input

Most programs are interactive—they need input from users, even something as simple as a tap. Capturing this input involves two key concepts:

1. **Listening for User Actions**: The app must actively wait for user interaction, like a person listening for someone shouting in the woods.
2. **Responding to Events**: When the input is detected, the app must respond accordingly.

### ✨ Forms of Input:

- **Keyboard**: Used for entering text and triggering functions with key combinations.
- **Mouse**: Clicking, selecting, dragging, dropping, and even using gesture paths.
- **Touch**: Tapping, swiping, pinching, zooming, and multi-finger gestures.
- **Camera**: Recognizes body movements, gestures, and captures images for analysis.
- **Voice Input**: Commands are spoken, converted into text/actions.
- **Sensors**: Accelerometers, barometers, GPS, etc., provide data like motion, location, and altitude.

> 🧠 _Important: Programs must explicitly listen and respond to these inputs._

### ⏱ Synchronous vs Asynchronous Input

- **Synchronous Input**: Program waits for the user (blocking).
- **Asynchronous Input**: Program runs in parallel with user actions (non-blocking).

---

## 🔹 Managing Variable Types

Programming means handling values of different types.

### 🛠 Type Management Methods:

- **Dynamic Typing**: Variables change type based on assigned value (e.g., from `int` to `string`).
- **Automatic Type Conversion**: Language adjusts mismatched types (e.g., `int` ➝ `decimal` ➝ `string`).
- **Manual Type Conversion**: You must explicitly convert types using methods or functions.

### 🔍 Type Awareness:

- Use tools/functions to inspect variable types.
- Types also matter for function parameters and return values.

> ⚠️ Always be aware of how data types interact, especially during function calls and mathematical operations.

---

## 🔹 Conditional Tests (If-Else)

Programs run based on **conditions**, yielding `true` or `false`.

### 🎯 Boolean Values

- A special data type: either `true` or `false`.

### 🧪 Comparison Operators:

| Operator | Meaning               |
| -------- | --------------------- |
| `==`     | Equal to              |
| `!=`     | Not equal to          |
| `>`      | Greater than          |
| `>=`     | Greater than or equal |
| `<`      | Less than             |
| `<=`     | Less than or equal    |

### ✅ If, Else, and Else-If:

- `if (condition)`: Runs if true
- `else`: Runs if `if` is false
- `else if`: Adds more conditions

### ⚠️ Flow Behavior:

- In a chain of `else-if`, only the **first true** condition runs.
- Separate `if` blocks evaluate **independently**.

---

## 🔹 Compound Conditional Tests

Sometimes you need more than one condition. Enter **logical operators**.

### 🔗 Logical Operators:

| Operator | Description                       | Example                     |                                |         |     |          |
| -------- | --------------------------------- | --------------------------- | ------------------------------ | ------- | --- | -------- |
| `&&`     | AND – all conditions must be true | `x > 5 && y < 10`           |                                |         |     |          |
| \`       |                                   | \`                          | OR – at least one must be true | \`x > 5 |     | y < 10\` |
| `!`      | NOT – reverses the Boolean value  | `!isRaining` (true ➝ false) |                                |         |     |          |

### 🧠 Real Examples:

- Find a brown cat: `isCat && isBrown`
- Check a number in range: `number > 100 && number < 200`
- Point in square: Check X-range AND Y-range

> ✅ Combine conditions using AND/OR logic to create smarter programs.

---

## 🔹 While Loops

Loops repeat code. A `while` loop runs **as long as a condition is true**.

### 🔁 While Syntax:

```javascript
while (condition) {
  // code block runs
}
```

- Evaluates condition **before** loop runs.
- Can **never run** if condition is initially false.

### 🌀 Do-While Loop:

```javascript
do {
  // code runs at least once
} while (condition);
```

- Condition is checked **after** code runs.

### ⚠️ Infinite Loops:

- Avoid creating conditions that are always true, or your program could crash.

---

## 🔹 For Loops

`for` loops are best for running code **a set number of times**.

### 🔄 For Loop Format:

```javascript
for (let i = 0; i < 5; i++) {
  // Runs 5 times: i = 0,1,2,3,4
}
```

### Parts:

- **Initialization**: `let i = 0`
- **Condition**: `i < 5`
- **Increment**: `i++`

### 📊 Nested For Loops:

Useful for grid-based logic:

```javascript
for (let x = 0; x < 3; x++) {
  for (let y = 0; y < 3; y++) {
    // Process cell (x, y)
  }
}
```

---

## 🔹 Arrays: Storing Groups of Values

Arrays group values under a single name.

### 🧺 Think of it as an Egg Carton:

- Each slot has a **number (index)**.
- First index is **0**.

### 🗂 Features:

- **Access specific items** via index: `arr[0]`
- **Modify** items: `arr[2] = 42`
- **Push** new items to the end: `arr.push(99)`
- **Slice** a part of the array: `arr.slice(2, 5)`

---

## 🔹 Using Loops with Arrays

To process all items in an array, use loops.

### 🔁 For Loop with Arrays:

```javascript
let sum = 0;
for (let i = 0; i < arr.length; i++) {
  sum += arr[i];
}
let average = sum / arr.length;
```

### 🔂 For-Each Loop (if supported):

```javascript
arr.forEach((value) => {
  console.log(value);
});
```

> 📈 Perfect for aggregation tasks like totals, averages, etc.

---

## 🔹 Modifying Arrays

Arrays aren’t static. You can:

1. **Update** items by index
2. **Add** items to the end: `arr.push(value)`
3. **Slice** sections: `arr.slice(startIndex, endIndex)`

> ✂️ Slicing doesn’t modify the original array—it returns a **new** one.

---

## 🎓 Conclusion

From capturing user inputs to building logical decision-making and looping structures, to managing and modifying collections of data—these are the **foundations** of programming. Once these blocks are strong, you can build powerful, responsive, and intelligent applications.

Happy coding! 🚀
