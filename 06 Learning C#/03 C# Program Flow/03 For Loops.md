# For Loops in C\#

Many programs need to execute certain statements multiple times. For example:

* A program that reads the rows of a spreadsheet continues until there are no more rows.
* A quiz program asks all of its multiple-choice questions before completing.

In C#, **loops** help you repeat blocks of code efficiently. One of the most common loop types is the **`for` loop**.

---

## Basic `for` Loop

A `for` loop executes a block of code a specific number of times.

**Structure:**

```csharp
for (initialization; condition; increment)
{
    // Code to execute
}
```

**Example:**

```csharp
int myVal = 15;
for (int i = 0; i < myVal; i++)
{
    Console.WriteLine($"i is currently {i}");
}
```

* Initialization: `int i = 0` → starts the loop counter at 0.
* Condition: `i < myVal` → loop continues while `i` is less than 15.
* Increment: `i++` → increases `i` by 1 each time.

➡ This loop executes **15 times** (from `i = 0` to `i = 14`).

---

## `foreach` Loop

A `foreach` loop is used to iterate over **sequences of values** such as arrays, lists, or strings.

**Example with an array:**

```csharp
int[] nums = { 3, 14, 15, 92, 6 };
foreach (int i in nums)
{
    Console.WriteLine($"i is currently {i}");
}
```

➡ This iterates through each number in the array and prints it.

**Example with a string:**

```csharp
string str = "Hello World";
int count = 0;

foreach (char c in str)
{
    if (c == 'o')
    {
        count++;
    }
}
Console.WriteLine($"Counted {count} 'o' characters");
```

➡ This counts the number of `'o'` characters in the string.

---

## Key Points

* Use a `for` loop when you know **exactly how many times** you want to repeat an action.
* Use a `foreach` loop to iterate over all elements in a **collection or sequence**.
* Both are powerful ways to handle repetitive tasks in your program.

Next, we’ll explore loops that run **until a condition is met**, such as `while` and `do-while` loops.
