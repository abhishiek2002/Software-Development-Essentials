# String Representation in C\#

In C#, every class implicitly inherits from the base **`object`** class. Because of this, all classes (both built-in and user-defined) inherit the **`ToString()`** method.

The purpose of **`ToString()`** is to return a string representation of an object that is suitable for display. Built-in types (like `int`, `double`, etc.) use it to show their values, while custom classes should override it to provide meaningful output.

---

## Default Behavior

```csharp
int x = 1000;
Console.WriteLine(x.ToString()); // "1000"

object a = new object();
Console.WriteLine(a.ToString()); // "System.Object"
```

- For primitive types, `ToString()` prints the actual value.
- For plain objects without overrides, it returns the fully qualified class name (`Namespace.ClassName`).

---

## Overriding `ToString()` in a Class

Custom classes should override **`ToString()`** to return a useful string representation.

Example with a **Book** class:

```csharp
public class Book
{
    public string Name { get; set; }
    public string Author { get; set; }
    public int PageCount { get; set; }

    public override string ToString()
    {
        return $"Book: {Name} by {Author}";
    }
}

Book b1 = new Book { Name = "1984", Author = "George Orwell", PageCount = 328 };
Console.WriteLine(b1.ToString()); // Explicit call
Console.WriteLine(b1);            // Implicit call (ToString() is called automatically)
```

### Key Point

- **`Console.WriteLine()`** (and string interpolation) will automatically call `ToString()` on objects.

---

## Overloading `ToString()`

C# also allows method **overloading**, meaning we can define another version of `ToString()` with parameters for formatting.

Example:

```csharp
public string ToString(char format)
{
    if (format == 'B')
    {
        return $"Book: {Name}, {Author}";
    }
    else if (format == 'F')
    {
        return $"{Name} by {Author}, {PageCount} pages";
    }
    else
    {
        return ToString(); // Fallback to default
    }
}

// Usage:
Console.WriteLine(b1.ToString('B')); // Book: 1984, George Orwell
Console.WriteLine(b1.ToString('F')); // 1984 by George Orwell, 328 pages
```

⚠️ **Note:** The overloaded version does not use `override` since the base `object` class does not define a `ToString(char)` method. Instead, this is a _new method_, not an override.

---

## Best Practices

- Always override `ToString()` to make debugging and logging easier.
- Ensure the string output is **readable** and **meaningful**.
- Avoid exposing sensitive data in `ToString()`.
- Consider formatting overloads or implementing **`IFormattable`** for advanced formatting needs.

---

✅ In summary: `ToString()` gives every object in C# a string representation. By overriding it in custom classes, you make your objects much easier to debug, display, and understand.
