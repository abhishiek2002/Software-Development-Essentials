# Using `break` and `continue` in Loops

## Overview

In addition to `for`, `while`, and `do-while` loops, programming languages like Java, C++, and JavaScript provide two special control statements that allow us to manage loop execution more precisely:

- **`break`**: Immediately terminates the loop execution.
- **`continue`**: Skips the rest of the current iteration and moves to the next iteration of the loop.

These statements give finer-grained control over loops, making certain problems easier to solve.

---

## 1. The `break` Statement

The **`break`** statement is used when we want to exit from a loop **before its normal ending condition** is reached.

### Example: Stop when a number ≥ 40 is found

```java
int[] numbers = {15, 7, 12, 23, 41, 28, 9, 17, 36};

for (int val : numbers) {
    if (val >= 40) {
        break; // Exit the loop immediately
    }
    System.out.println(val);
}
```

### Output:

```
15
7
12
23
```

Here, when `41` is encountered, the loop **stops entirely**, even though there are more numbers left.

---

## 2. The `continue` Statement

The **`continue`** statement skips the remaining code inside the loop for the current iteration and jumps to the **next iteration**.

### Example: Skip numbers in the 20s (20–29)

```java
int[] numbers = {15, 7, 12, 23, 41, 28, 9, 17, 36};

for (int val : numbers) {
    if (val >= 20 && val <= 29) {
        continue; // Skip numbers between 20 and 29
    }
    System.out.println(val);
}
```

### Output:

```
15
7
12
41
9
17
36
```

Here, `23` and `28` are skipped because they fall within the 20–29 range.

---

## Key Differences Between `break` and `continue`

| Feature     | `break`                                           | `continue`                                |
| ----------- | ------------------------------------------------- | ----------------------------------------- |
| Effect      | Exits the loop completely                         | Skips to next iteration                   |
| When to Use | When you no longer need to check further elements | When you only want to skip specific cases |
| Example Use | Stop searching once item is found                 | Ignore invalid/undesired values           |

---

## Practical Applications

- **`break`:**

  - Stop searching in an array once the target element is found.
  - Exit infinite loops under a condition.

- **`continue`:**

  - Skip over invalid inputs (e.g., negative numbers in a calculation).
  - Avoid processing unnecessary values in datasets.

---

✅ With `break` and `continue`, you can simplify loop logic, improve efficiency, and make your code more readable.
