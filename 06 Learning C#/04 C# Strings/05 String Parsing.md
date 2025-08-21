# String Parsing in C\#

Parsing is the process of converting string data into native C# data types. This is a common requirement when dealing with user input, files, or data streams. C# provides built-in methods like `Parse` and `TryParse` to safely and efficiently perform this conversion.

---

## 1. Parsing with `Parse()`

Most C# data types include a static `Parse()` method that attempts to convert a string into that type. If the format is invalid, it throws an exception, so it’s often wrapped in a `try-catch` block.

```csharp
try
{
    string numStr1 = "1";
    int targetNum = int.Parse(numStr1);
    Console.WriteLine($"Parsed integer: {targetNum}");
}
catch (Exception ex)
{
    Console.WriteLine($"Parsing failed: {ex.Message}");
}
```

✅ Output: `Parsed integer: 1`

---

## 2. Using `NumberStyles`

When dealing with formatted numbers (decimals, commas, etc.), the `System.Globalization.NumberStyles` enum helps customize parsing rules.

```csharp
using System.Globalization;

string numStr2 = "2.0";
string numStr3 = "3,000";
string numStr4 = "3,000.0";

int result;

// Float parsing
result = int.Parse(numStr2, NumberStyles.Float);
Console.WriteLine($"Float parsed: {result}");

// Thousands separator parsing
result = int.Parse(numStr3, NumberStyles.AllowThousands);
Console.WriteLine($"Thousands parsed: {result}");

// Float + Thousands
result = int.Parse(numStr4, NumberStyles.Float | NumberStyles.AllowThousands);
Console.WriteLine($"Float + Thousands parsed: {result}");
```

✅ Output:

```
Float parsed: 2
Thousands parsed: 3000
Float + Thousands parsed: 3000
```

---

## 3. Parsing Other Types

Other primitive types also support parsing.

```csharp
// Boolean parsing
bool flag = bool.Parse("True");
Console.WriteLine($"Parsed bool: {flag}");

// Float parsing with formatting
float pi = float.Parse("1.235");
Console.WriteLine($"Parsed float: {pi:F2}"); // 2 decimal places
```

✅ Output:

```
Parsed bool: True
Parsed float: 1.24
```

---

## 4. Safe Parsing with `TryParse()`

`TryParse()` is a safer alternative that avoids exceptions. It returns `true` or `false` to indicate success and outputs the parsed value via an `out` parameter.

```csharp
string numStr = "123";
int value;

if (int.TryParse(numStr, out value))
{
    Console.WriteLine($"Successfully parsed: {value}");
}
else
{
    Console.WriteLine("Parsing failed.");
}
```

✅ Output: `Successfully parsed: 123`

---

## 5. Key Takeaways

- Use `Parse()` when you’re confident the format is valid (but handle exceptions).
- Use `NumberStyles` for numbers with decimals, commas, or other formatting.
- Use `TryParse()` for safer parsing without exceptions.
- Works with multiple types (`int`, `float`, `bool`, `DateTime`, etc.).

---

👉 Next Steps: Experiment by parsing different number formats and types (e.g., `decimal`, `DateTime`) to get more comfortable with how parsing behaves in various scenarios.
