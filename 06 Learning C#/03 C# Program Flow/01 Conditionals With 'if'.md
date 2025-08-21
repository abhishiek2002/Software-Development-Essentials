# Conditionals with `if` in C\#

In C#, conditional statements let you control the flow of your program by making decisions based on data. The most common way to do this is with the **`if` statement**.

---

## The `if` Statement

An `if` statement executes a block of code only if a specified condition evaluates to `true`.

```csharp
int theVal = 50;

if (theVal == 50)
{
    Console.WriteLine("theVal is 50");
}
```

Here, the condition `theVal == 50` checks for equality using `==`. Since `theVal` is `50`, the message is printed.

---

## The `else` Clause

You can attach an **`else`** clause to handle the case when the condition is false.

```csharp
if (theVal == 50)
{
    Console.WriteLine("theVal is 50");
}
else
{
    Console.WriteLine("theVal is something else");
}
```

---

## The `else if` Clause

For multiple conditions, use **`else if`**.

```csharp
if (theVal == 50)
{
    Console.WriteLine("theVal is 50");
}
else if (theVal >= 51 && theVal <= 60)
{
    Console.WriteLine("theVal is between 51 and 60");
}
else
{
    Console.WriteLine("theVal is something else");
}
```

> 🔑 **Tip**: Use `else if` sparingly. If you have too many conditions (4–5 or more), consider using a `switch` statement instead for readability.

---

## The Ternary Operator (`?:`)

A shorthand way to write simple `if-else` statements is with the **ternary operator**.

```csharp
Console.WriteLine(theVal < 50 ? "theVal is small" : "theVal is large");
```

This works as follows:

* Condition: `theVal < 50`
* If true → prints `theVal is small`
* If false → prints `theVal is large`

---

## Summary

* Use `if` for checking a condition.
* Use `else` to handle the opposite case.
* Use `else if` for multiple conditions.
* Use the ternary operator `?:` for concise one-line decisions.

These constructs allow you to make logical decisions in your program flow.

---

✅ **Practice Idea:**

* Write a program that checks the age of a user and prints whether they are a child, teenager, adult, or senior citizen using `if`, `else if`, and `else`.
* Rewrite a simple `if-else` check using the ternary operator.
