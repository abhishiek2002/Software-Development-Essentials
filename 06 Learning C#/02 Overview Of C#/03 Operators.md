# C# Operators

In this lesson, we explore the different types of **operators** in C# and how they are used to perform operations on data.

---

## 1. Arithmetic Operators

Arithmetic operators let you perform mathematical operations.

```csharp
int x = 10;
int y = 5;

Console.WriteLine(x / y * x);  // Division, multiplication
```

- `+` → addition
- `-` → subtraction
- `*` → multiplication
- `/` → division
- `%` → modulus (remainder)

You can also use `+` to **concatenate strings**:

```csharp
string a = "Hello ";
string b = "World";
Console.WriteLine(a + b);  // "Hello World"
```

---

## 2. Increment & Decrement

Special shorthand operators for adding or subtracting 1.

```csharp
x++; // same as x = x + 1
y--; // same as y = y - 1
```

---

## 3. Compound Assignment

Operators that combine assignment with math.

```csharp
int a = 5;
a += 3; // same as a = a + 3 → result: 8
```

Works with other arithmetic operators too:

- `+=`, `-=`, `*=`, `/=`, `%=`, etc.

---

## 4. Logical Operators

Used in conditions, return `true` or `false`.

```csharp
int x = 10;
int y = 4;

Console.WriteLine(x > y && y >= 5); // false
Console.WriteLine(x > y || y >= 5); // true
```

- `&&` → logical AND (both must be true)
- `||` → logical OR (at least one must be true)
- `!` → logical NOT (inverts Boolean value)

---

## 5. Null-Coalescing Operators

These help handle `null` values.

### `??` operator

Uses the left value if it’s not null, otherwise uses the right.

```csharp
string? str = null;
Console.WriteLine(str ?? "unknown string");
// Output: "unknown string"
```

### `??=` operator

Assigns a value only if the variable is null.

```csharp
string? str = null;
str ??= "new string";
Console.WriteLine(str); // "new string"
```

If `str` already had a value, the assignment would not happen.

---

✅ **Tip:** Experiment with combinations of these operators in small programs to reinforce your understanding.

---

## Summary

- Arithmetic operators perform math or string concatenation.
- Increment/decrement (`++`, `--`) quickly adjust integers.
- Compound assignments (`+=`, `-=`) shorten expressions.
- Logical operators (`&&`, `||`, `!`) return Boolean results.
- Null-coalescing operators (`??`, `??=`) handle `null` safely.

---
