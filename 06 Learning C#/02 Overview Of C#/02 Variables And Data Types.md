# Variables and Data Types in C\#

## Introduction

Now that we’ve built our first simple program, let’s dive into **variables** and **data types** in C#. Unlike dynamically typed languages like JavaScript or Python, C# is **strongly typed**, which means we must declare a variable's type explicitly (or let the compiler infer it with `var`). This provides **type safety**, reduces bugs, and improves readability.

---

## Declaring Variables

A **variable** in C# is declared by specifying:

1. **Type** → e.g., `int`, `float`, `string`
2. **Name** → identifier you choose
3. **Value** → optional initial value

```csharp
int myNumber = 10;        // integer
float myFloat = 2.5f;      // float (note the 'f')
decimal myDecimal = 2.5m;  // decimal (note the 'm')
bool myBool = true;        // boolean
char myChar = 'A';         // single character
string myString = "Hello"; // string of characters
```

⚡ **Note:** The suffixes `f` (float) and `m` (decimal) are required, otherwise C# will treat them as `double` by default.

---

## Using `var`

C# allows implicit typing with the `var` keyword. The compiler infers the type at compile-time:

```csharp
var x = 42;        // inferred as int
var z = "CSharp";  // inferred as string
```

---

## Arrays

Arrays hold **multiple values** of the same type.

```csharp
// Declaring an empty array of 5 integers
int[] vals = new int[5];

// Initializing with values
int[] nums = { 1, 2, 3, 4, 5 };

// String array
string[] strs = { "one", "two", "three" };
```

---

## Printing Variables with Format Strings

You can use **placeholders** inside strings to print multiple values:

```csharp
Console.WriteLine("{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}",
    myNumber, myChar, myBool, myString, myFloat, myDecimal, x, z);
```

Each `{index}` corresponds to a variable listed after the string.

---

## Null Values

`null` means *no value*.

```csharp
object obj = null;
Console.WriteLine(obj); // prints nothing
```

---

## Type Conversions

C# allows two kinds of conversions:

### 1. Implicit Conversion

Automatically performed when no data loss occurs.

```csharp
int i = 10;
long bigNum = i;  // implicit conversion from int → long
```

### 2. Explicit Conversion (Casting)

Required when data might be lost.

```csharp
int i = 10;
float i_to_f = (float)i;   // explicit cast int → float

float f = 2.9f;
int f_to_i = (int)f;       // explicit cast float → int (decimal part truncated)

Console.WriteLine(i_to_f); // 10.0
Console.WriteLine(f_to_i); // 2
```

⚠️ **Warning:** Explicit conversions may lose precision or truncate values.

---

## Summary

* C# requires **explicit type declaration** (except when using `var`).
* Common data types: `int`, `float`, `decimal`, `bool`, `char`, `string`.
* Arrays store multiple values of the same type.
* Use **format strings** for neat console output.
* `null` means no value.
* Understand **implicit vs. explicit conversions** to avoid bugs.

---

✅ Next, we’ll explore how to perform **operations** on these data types in C#.
