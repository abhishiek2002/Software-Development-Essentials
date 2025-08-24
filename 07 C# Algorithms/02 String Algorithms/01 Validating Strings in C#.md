# Validating Strings in C\#

## Overview

In this section, we learn about **validation algorithms** in C#. A validation algorithm checks whether an input string meets specific conditions or properties. These algorithms return a **Boolean value** (`true` or `false`) depending on whether the string satisfies the given condition.

Common string validation checks include:

* Is the string all uppercase?
* Is the string all lowercase?
* Does the string contain only letters?
* Does the string contain only digits?
* Does the string have at least one number, one uppercase, and one lowercase letter (e.g., for password complexity)?

---

## What is a Validation Algorithm?

* **Definition**: An algorithm that checks whether input data satisfies certain rules.
* **Output**: Boolean (`true`/`false`).
* **Use case**: Ensures that data meets required conditions (e.g., password validation).

---

## Using C# Standard Library for Validation

C# provides helpful tools in the **`System.Linq`** namespace:

* **`All` method** → returns `true` if *all* characters in a string meet a condition.
* **`Any` method** → returns `true` if *at least one* character meets a condition.

Additionally, the **`char` struct** provides useful methods:

* `char.IsUpper()` → checks if a character is uppercase.
* `char.IsLower()` → checks if a character is lowercase.
* `char.IsLetter()` → checks if a character is a letter.
* `char.IsDigit()` → checks if a character is a digit.

---

## Example 1: Check if a String is Uppercase

```csharp
using System;
using System.Linq;

class Program
{
    static bool IsUppercase(string input)
    {
        return input.All(char.IsUpper);
    }

    static void Main()
    {
        Console.WriteLine(IsUppercase("HELLO")); // True
        Console.WriteLine(IsUppercase("Hello")); // False
    }
}
```

* `input.All(char.IsUpper)` checks if all characters in the string are uppercase.
* No need for an `if-else` statement since `All` already returns a Boolean.

---

## Example 2: Check if a String is Lowercase

```csharp
static bool IsLowercase(string input)
{
    return input.All(char.IsLower);
}

Console.WriteLine(IsLowercase("world")); // True
Console.WriteLine(IsLowercase("World")); // False
```

---

## Example 3: Check if a String Contains Only Letters or Only Digits

```csharp
static bool IsOnlyLetters(string input)
{
    return input.All(char.IsLetter);
}

static bool IsOnlyDigits(string input)
{
    return input.All(char.IsDigit);
}

Console.WriteLine(IsOnlyLetters("Hello")); // True
Console.WriteLine(IsOnlyLetters("Hello123")); // False
Console.WriteLine(IsOnlyDigits("12345"));   // True
Console.WriteLine(IsOnlyDigits("123a"));    // False
```

---

## Example 4: Password Complexity Validator

Requirement: A password must contain **at least one uppercase letter, one lowercase letter, and one digit**.

```csharp
static bool IsPasswordComplex(string input)
{
    return input.Any(char.IsUpper) &&
           input.Any(char.IsLower) &&
           input.Any(char.IsDigit);
}

Console.WriteLine(IsPasswordComplex("Password1")); // True
Console.WriteLine(IsPasswordComplex("password"));  // False
Console.WriteLine(IsPasswordComplex("PASSWORD"));  // False
Console.WriteLine(IsPasswordComplex("123456"));   // False
```

### Explanation

* `input.Any(char.IsUpper)` → true if there’s at least one uppercase letter.
* `input.Any(char.IsLower)` → true if there’s at least one lowercase letter.
* `input.Any(char.IsDigit)` → true if there’s at least one digit.
* All three must be true for the password to be valid.

---

## Practical Applications

* **Form validation**: Checking if input fields meet requirements (e.g., email, username, password).
* **Password complexity checks**: Ensures strong security.
* **Data validation**: Prevents invalid or malicious input.
* **User input filtering**: Ensures data consistency before saving into a database.

---

## Key Takeaways

* Validation algorithms in C# return a Boolean indicating if the input meets a condition.
* Use **LINQ (`All`, `Any`)** for compact and readable validation code.
* Use **`char` methods** (`IsUpper`, `IsLower`, `IsLetter`, `IsDigit`) to define conditions.
* Real-world example: **Password complexity validation** using multiple checks.

With these techniques, you can build flexible validators for any string input requirement.
