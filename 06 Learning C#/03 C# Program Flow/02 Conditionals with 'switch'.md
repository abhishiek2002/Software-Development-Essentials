# Conditionals with `switch`

In C#, conditional branching can be achieved not only with `if-else` but also with the **`switch` statement**. The `switch` statement is useful when there are multiple possible conditions to check, making the code more readable compared to long chains of `if-else` statements.

---

## Structure of a `switch` Statement

```csharp
switch (expression)
{
    case value1:
        // Code to execute if expression == value1
        break;
    case value2:
        // Code to execute if expression == value2
        break;
    case value3:
    case value4:
        // Code executed if expression == value3 OR value4
        break;
    default:
        // Code to execute if none of the above match
        break;
}
```

### Key Points:

* **Expression**: The value you want to test (e.g., `theVal`).
* **case labels**: Define branches of execution for specific values.
* **break**: Ends the case execution to prevent falling through into the next case.
* **default**: A catch-all branch that runs if none of the cases match.

---

## Example

```csharp
int theVal = 50;

switch (theVal)
{
    case 50:
        Console.WriteLine("theVal is 50");
        break;
    case 51:
        Console.WriteLine("theVal is 51");
        break;
    case 52:
    case 53:
    case 54:
        Console.WriteLine("theVal is between 52 and 54");
        break;
    default:
        Console.WriteLine("theVal is something else");
        break;
}
```

### Output Cases:

* If `theVal = 50` → Output: `theVal is 50`
* If `theVal = 53` → Output: `theVal is between 52 and 54`
* If `theVal = 60` → Output: `theVal is something else`

---

## Supported Types in `switch`

* Traditionally: integers and characters.
* Since **C# 7**: can use **any non-null expression**:

  * `int`
  * `string`
  * `char`
  * `bool`
  * `enum`

---

## When to Use `switch` vs `if-else`

* Use **`if-else`** for:

  * Small number of conditions (3–5 checks).
  * Complex conditions (e.g., range comparisons `x > 10 && x < 20`).

* Use **`switch`** for:

  * Many discrete, fixed values.
  * Clearer readability when branching multiple times.

---

✅ **Tip:** Think of `if-else` as flexible for logic-based checks, while `switch` is best for handling multiple specific values in a neat, readable format.
