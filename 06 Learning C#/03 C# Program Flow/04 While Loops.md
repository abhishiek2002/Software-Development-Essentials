# While Loops and Do-While Loops in C\#

## Overview

In this lesson, we will learn about **while loops** and **do-while loops** in C#. Both are used to repeatedly execute a block of code as long as a specified condition is true. The key difference lies in **when the condition is checked**.

---

## While Loop

The **while loop** checks the condition **before** executing the loop body. If the condition is false at the very beginning, the loop body will not run at all.

### Syntax

```csharp
while (condition)
{
    // Code to execute repeatedly
}
```

### Example

```csharp
string inputStr = "";

while (inputStr != "exit")
{
    inputStr = Console.ReadLine();
    Console.WriteLine($"You entered {inputStr}");
}
```

### Explanation

- The loop continues **while `inputStr` is not equal to `exit`**.
- User inputs are read and printed back to the console.
- When the user types `exit`, the condition becomes false, and the loop stops.

If `inputStr` was initialized to `exit`, the loop would **not run even once**.

---

## Do-While Loop

The **do-while loop** checks the condition **after** executing the loop body. This means the loop is guaranteed to run **at least once**, regardless of the condition.

### Syntax

```csharp
do
{
    // Code to execute repeatedly
}
while (condition);
```

### Example

```csharp
string inputStr = "";

do
{
    inputStr = Console.ReadLine();
    Console.WriteLine($"You entered {inputStr}");
}
while (inputStr != "exit");
```

### Explanation

- The loop runs once and then checks if `inputStr != "exit"`.
- Even if `inputStr` is initially set to `exit`, the loop will still execute once before stopping.

---

## Key Difference Between While and Do-While

| Feature            | While Loop                         | Do-While Loop                                  |
| ------------------ | ---------------------------------- | ---------------------------------------------- |
| Condition Check    | Before executing loop body         | After executing loop body                      |
| Minimum Executions | 0 (may not run at all)             | 1 (always runs at least once)                  |
| Use Case           | When you want to check before loop | When you want to ensure at least one execution |

---

## Practical Applications

- **While loop:** Useful when you don’t want the loop to run even once if the condition is false from the start (e.g., reading data only if available).
- **Do-while loop:** Useful when the loop must execute at least once (e.g., prompting a user for input before checking validity).

---

✅ **Summary:**

- Use **while loop** when you may not need any iteration if the condition is false initially.
- Use **do-while loop** when you want the loop to run at least once regardless of the condition.
