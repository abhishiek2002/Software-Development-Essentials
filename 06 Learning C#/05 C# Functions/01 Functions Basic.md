# Function Basics in C\#

In this chapter, we’ll explore the fundamentals of defining and working with **functions** in C#. Functions are sometimes also called **methods**, and we’ll see more of that in the Object-Oriented Programming chapter.

## Why Functions?

Functions allow us to:

- **Group related code** together.
- **Reuse code** without rewriting.
- **Parameterize logic** so it can work with different values.

---

## Defining a Function

A function in C# generally consists of:

1. A **return type** (the type of value it returns, or `void` if none).
2. A **name** (following C# naming conventions).
3. An optional **parameter list** inside parentheses `()`, where each parameter has a type and a name.
4. A block of code inside **curly braces `{ }`**.

---

### Example 1: Converting Miles to Kilometers

```csharp
float MilesToKm(float miles)
{
    float result = miles * 1.6f; // f makes the number a float literal
    return result; // returning the computed value
}

Console.WriteLine($"The result is {MilesToKm(8.0f)}");
Console.WriteLine($"The result is {MilesToKm(52.0f)}");
```

**Explanation:**

- `float` is the return type.
- `MilesToKm` is the function name.
- It takes a parameter `float miles`.
- Inside the function, we multiply miles by `1.6f` and return it.
- We then call the function with different values.

---

### Example 2: A Function with No Return Value

Functions can also return **nothing**, in which case the return type is `void`.

```csharp
void PrintWithPrefix(string theStr)
{
    Console.WriteLine($":: {theStr}");
}

PrintWithPrefix("Test String");
PrintWithPrefix("Another Test String");
```

**Explanation:**

- `void` means the function does not return anything.
- `PrintWithPrefix` takes one parameter (`string theStr`).
- It simply prints the string with a prefix.

---

### Example 3: Function Without Parameters

A function does not necessarily need parameters:

```csharp
void PrintHello()
{
    Console.WriteLine("Hello World!");
}

PrintHello();
```

---

## Function Anatomy Recap

- **Return type**: Can be any data type (`int`, `float`, `string`, etc.) or `void`.
- **Function name**: Descriptive of what it does.
- **Parameters**: Optional; allows passing data into the function.
- **Body**: The block of code inside `{ }`.

---

## Running the Program

- Save your file and run:

```bash
dotnet run
```

- Output will show both results of `MilesToKm` and the prefixed messages from `PrintWithPrefix`.

---

✅ With these basics, we’re now ready to explore more advanced function concepts like multiple parameters, default values, return types, and function overloading.
