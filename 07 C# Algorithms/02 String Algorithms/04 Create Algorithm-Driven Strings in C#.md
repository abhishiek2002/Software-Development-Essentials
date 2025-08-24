# Create Algorithm-Driven Strings in C\#

## Key Concept

* Strings in C# are **immutable** → once created, they cannot be changed.
* Creating new strings repeatedly can be inefficient.
* **StringBuilder** (from `System.Text`) allows efficient string modifications because it dynamically expands memory instead of creating a new string every time.

---

## Algorithm Example: Reverse a String

### Base Cases

Before processing, handle null or empty inputs:

```csharp
if (string.IsNullOrEmpty(input))
    return input;
```

### Reverse with StringBuilder

```csharp
using System.Text;

string ReverseString(string input)
{
    if (string.IsNullOrEmpty(input))
        return input;

    StringBuilder reversed = new StringBuilder();
    for (int i = input.Length - 1; i >= 0; i--)
    {
        reversed.Append(input[i]);
    }
    return reversed.ToString();
}
```

✅ Efficient because `StringBuilder` avoids creating unnecessary intermediate strings.

### Reverse with Array

Another method uses built-in tools:

```csharp
string ReverseString2(string input)
{
    if (string.IsNullOrEmpty(input))
        return input;

    char[] chars = input.ToCharArray();
    Array.Reverse(chars);  // In-place reversal
    return new string(chars);
}
```

✅ Simpler to read, but slightly less control compared to manual iteration.

---

## Pros and Cons

### StringBuilder Approach

* ✅ Efficient for large strings or repeated modifications.
* ✅ Gives full control over the reversal process.
* ❌ Slightly more verbose.

### Array Approach

* ✅ Uses built-in, well-tested methods.
* ✅ More concise.
* ❌ Less control over how reversal happens.

---

## Example Usage

```csharp
Console.WriteLine(ReverseString("Hello"));   // Output: "olleH"
Console.WriteLine(ReverseString2("Buddy!")); // Output: "!ydduB"
Console.WriteLine(ReverseString(""));        // Output: ""
Console.WriteLine(ReverseString(null));       // Output: null
```

---

## Takeaway

* **Use built-in methods** when available and efficient (e.g., `Array.Reverse`).
* **Use StringBuilder** when performance matters, especially for custom algorithms.
* Always handle **edge cases** (null or empty strings) before processing.
* Multiple valid algorithms exist → choose based on readability, control, and efficiency.
