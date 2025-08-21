# Exceptions in C\#

Exceptions in C# provide a structured way to handle unexpected errors that occur during program execution. Instead of crashing or showing raw error messages to the user, exception handling allows developers to gracefully respond to issues.

---

## Basic Example Without Exception Handling

```csharp
int x = 10;
int y = 0;
int result = x / y;  // Causes DivideByZeroException
```

This will throw an **unhandled exception** at runtime, which is not user-friendly.

---

## Using `try` and `catch`

We wrap the risky code in a `try` block and handle errors in a `catch` block:

```csharp
try
{
    int x = 10;
    int y = 0;
    int result = x / y;
}
catch (Exception)
{
    Console.WriteLine("Whoops! An error occurred.");
}
```

Now, instead of crashing, the program prints a friendly error message.

---

## Catching Specific Exceptions

C# allows catching specific exception types for more control:

```csharp
try
{
    int x = 10;
    int y = 0;
    int result = x / y;
}
catch (DivideByZeroException e)
{
    Console.WriteLine("Whoops! You tried to divide by zero.");
    Console.WriteLine(e.Message); // Detailed exception message
}
```

You can also have **multiple `catch` blocks** for different exception types.

---

## Throwing Exceptions

You can manually trigger exceptions using the `throw` keyword:

```csharp
int x = 1002;
if (x > 1000)
{
    throw new ArgumentOutOfRangeException("x", "X has to be 1000 or less");
}
```

Handling this exception:

```csharp
try
{
    int x = 1002;
    if (x > 1000)
        throw new ArgumentOutOfRangeException("x", "X has to be 1000 or less");
}
catch (ArgumentOutOfRangeException e)
{
    Console.WriteLine("Sorry, 1000 is the limit.");
    Console.WriteLine(e.Message);
}
```

---

## Using `finally`

The `finally` block always executes, regardless of whether an exception occurs:

```csharp
try
{
    int x = 10;
    int y = 0;
    int result = x / y;
}
catch (DivideByZeroException)
{
    Console.WriteLine("Cannot divide by zero!");
}
finally
{
    Console.WriteLine("This code always runs.");
}
```

This is useful for cleanup operations such as closing files or releasing resources.

---

## Key Points

- `try` contains code that may throw an exception.
- `catch` handles specific or general exceptions.
- `throw` is used to raise an exception manually.
- `finally` always executes (cleanup code goes here).
- Exceptions are objects with properties (e.g., `.Message`).

✅ Exception handling makes programs more **robust, user-friendly, and easier to maintain**.
