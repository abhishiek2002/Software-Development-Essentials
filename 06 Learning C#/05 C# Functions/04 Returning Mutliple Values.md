# Returning Multiple Values in C\#

## Overview

In C#, a function can normally return **only one value**. But there are cases where you may want to return **multiple values** from a single function. Traditionally, this was done using the **`out` keyword**, but it makes the code harder to read and goes against the convention that:

- **Parameters** are used to pass data _into_ a function.
- **Return values** are used to get results _out_ of a function.

To solve this problem more cleanly, starting in **C# 7**, Microsoft introduced **Tuples**.

---

## What is a Tuple?

A **tuple** is a lightweight data structure that groups multiple values into a single object.

### Example 1: Declaring a tuple with named elements

```csharp
(int a, int b) tup1 = (5, 10);

// Accessing values
Console.WriteLine(tup1.a); // 5
Console.WriteLine(tup1.b); // 10

// Updating values
tup1.b = 20;
Console.WriteLine(tup1.b); // 20
```

### Example 2: Declaring a tuple with implicit names

```csharp
var tup2 = ("Hello", 3.14);

// Accessing values using default names
Console.WriteLine(tup2.Item1); // Hello
Console.WriteLine(tup2.Item2); // 3.14

// Updating values
tup2.Item1 = "New String";
Console.WriteLine(tup2.Item1); // New String
```

---

## Returning Multiple Values Using Tuples

Instead of using **out parameters**, you can return multiple values from a function using tuples.

### Example: PlusTimes function

```csharp
// Function returning a tuple
public static (int, int) PlusTimes(int a, int b)
{
    return (a + b, a * b);
}

// Calling the function
var result = PlusTimes(6, 12);

Console.WriteLine($"Sum: {result.Item1}, Product: {result.Item2}");
```

**Output:**

```
Sum: 18, Product: 72
```

---

## Benefits of Tuples

- Cleaner and more readable than `out` parameters.
- Keeps function signatures consistent: input through parameters, output through return values.
- Easy to work with multiple results.
- Modern and preferred approach in C#.

---

## Best Practices

- Use **tuples** for simple, temporary grouping of values.
- For more complex data, consider creating a **class or struct**.
- Prefer **named tuple elements** for better readability.

```csharp
(int sum, int product) result = PlusTimes(6, 12);
Console.WriteLine($"Sum: {result.sum}, Product: {result.product}");
```

---

## Summary

- **Old Way**: `out` parameters (still seen in older code).
- **Modern Way**: **Tuples** (C# 7+), cleaner and easier to understand.
- Tuples make it possible to return multiple values directly from a function without breaking the convention of parameters vs return values.
