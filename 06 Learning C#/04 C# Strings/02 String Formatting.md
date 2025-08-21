# String Formatting in C\#

C# provides powerful mechanisms to format strings for better readability and structured outputs. The **composite formatting** technique uses placeholders (`{index[,alignment][:formatString]}`) inside strings, where values are inserted and formatted.

---

## Basic Syntax

```csharp
Console.WriteLine("{0}", value);
```

* **index** → Refers to the argument position in the method call.
* **alignment (optional)** → Width of the field (positive = right-aligned, negative = left-aligned).
* **formatString (optional)** → Specifies how the value is formatted.

---

## Common Format Specifiers

| Specifier | Meaning                     | Example Output (Value = 1234.5678) |
| --------- | --------------------------- | ---------------------------------- |
| `D`       | Decimal (integers only)     | `1235` (with rounding)             |
| `N`       | Number with commas          | `1,234.57`                         |
| `F`       | Fixed-point                 | `1234.57`                          |
| `G`       | General format              | `1234.5678`                        |
| `E`       | Exponential (scientific)    | `1.234568E+03`                     |
| `P`       | Percent                     | `123456.78 %`                      |
| `C`       | Currency                    | `$1,234.57`                        |
| `X`       | Hexadecimal (integers only) | `4D2`                              |

### Example:

```csharp
int val1 = 1234;
decimal val2 = 1234.5678m;

Console.WriteLine("{0:D}, {0:N}, {0:F}, {0:G}", val1);
Console.WriteLine("{0:E}, {0:N}, {0:F}, {0:G}", val2);
```

---

## Precision Specifiers

You can control the number of digits or decimal places by appending a number after the format specifier.

```csharp
Console.WriteLine("{0:D6}, {0:N2}, {0:F1}, {0:G3}", val1);
```

### Output:

* `D6` → Pads with zeros: `001234`
* `N2` → 2 decimal places: `1,234.00`
* `F1` → Fixed-point, 1 decimal place: `1234.0`
* `G3` → 3 significant digits: `1.23E+03`

---

## Alignment

Values can be aligned in a field by specifying width.

```csharp
Console.WriteLine("|{0,10}|{1,-10}|", "Right", "Left");
```

* `,10` → Right-align in a 10-character space.
* `,-10` → Left-align in a 10-character space.

---

## Formatting Tabular Data

Example of formatting sales data:

```csharp
string[] quarters = { "Q1", "Q2", "Q3", "Q4" };
decimal[] sales = { 15000.25m, 20000.75m, 18000.50m, 22000.00m };
double[] intlPercent = { 0.25, 0.40, 0.33, 0.50 };

// Print headers
Console.WriteLine("{0,12}{1,12}{2,12}{3,12}", quarters[0], quarters[1], quarters[2], quarters[3]);

// Print sales formatted as currency
Console.WriteLine("{0,12:C0}{1,12:C0}{2,12:C0}{3,12:C0}", sales[0], sales[1], sales[2], sales[3]);

// Print international percentage formatted as percent
Console.WriteLine("{0,12:P0}{1,12:P0}{2,12:P1}{3,12:P2}", intlPercent[0], intlPercent[1], intlPercent[2], intlPercent[3]);
```

### Output:

```
          Q1          Q2          Q3          Q4
     $15,000     $20,001     $18,001     $22,000
        25 %        40 %       33.0 %      50.00 %
```

---

## Summary

* Use **format specifiers** (`D`, `N`, `F`, `C`, `P`, etc.) to control how values display.
* Apply **precision specifiers** (like `N2`, `F1`) for decimals and digit control.
* Use **alignment** (`{0,10}`, `{0,-10}`) for clean tabular outputs.
* Perfect for generating reports, receipts, or structured console outputs.
