# String Interpolation in C\#

String Interpolation is a modern and more **readable way** of combining variables, expressions, and formatting directly inside strings. It eliminates the need for index placeholders (e.g., `{0}`, `{1}`) and allows you to embed variable names or expressions directly.

---

## Syntax

```csharp
$"Text {variableName} more text {expression}"
```

* A **dollar sign `$`** before the string indicates an interpolated string.
* Inside `{ }` you can place:

  * Variable names
  * Expressions
  * Formatting specifiers

---

## Example: Without vs With Interpolation

### Using Index Placeholders:

```csharp
string make = "Toyota";
string model = "Corolla";
int year = 2020;

txt = string.Format("{0} {1} {2}", year, make, model);
Console.WriteLine(txt);
```

### Using String Interpolation:

```csharp
string make = "Toyota";
string model = "Corolla";
int year = 2020;

Console.WriteLine($"{year} {make} {model}");
```

✅ Easier to read and maintain.

---

## Formatting with Interpolation

You can still apply formatting options just like in composite formatting.

```csharp
decimal price = 25000.5m;
Console.WriteLine($"Price: {price:C2}");  // Currency, 2 decimal places
```

Output:

```
Price: $25,000.50
```

---

## Using Expressions

Expressions can be placed directly inside braces.

```csharp
int miles = 10000;
Console.WriteLine($"Distance: {miles * 1.6:F2} kilometers");
```

Output:

```
Distance: 16000.00 kilometers
```

---

## Escaping Braces

If you need literal curly braces `{ }` in your string, use **double braces** `{{` and `}}`.

```csharp
int miles = 12000;
Console.WriteLine($"Miles: {{ {miles} }}");
```

Output:

```
Miles: { 12000 }
```

---

## Key Benefits

* More **readable** than index placeholders
* Allows **direct expressions** inside strings
* Supports **standard format specifiers**
* Easier to maintain for long strings with multiple variables
