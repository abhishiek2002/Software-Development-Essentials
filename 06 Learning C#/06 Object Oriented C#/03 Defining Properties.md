# Defining Properties in C\#

In the previous lesson, we learned how **access modifiers** control access to class members. But often, we need a safe and clean way to expose private fields to other parts of our program. Instead of writing separate `Get` and `Set` methods, **C# provides properties**—a powerful feature that combines the flexibility of fields with the encapsulation of methods.

---

## 🔑 What Are Properties?

- Properties act as **intermediaries** between private fields and the outside world.
- They allow us to define **getters** and **setters** for private data without exposing the field directly.
- This ensures **encapsulation** while keeping code clean and readable.

Example:

```csharp
private string _name;

public string Name
{
    get { return _name; }
    set { _name = value; }
}
```

Here:

- `get` returns the private field `_name`.
- `set` assigns a new value to `_name`. The **`value`** keyword is an implicit parameter that represents the assigned value.

---

## ⚡ Shorthand Syntax (Expression-Bodied Properties)

This pattern is so common that C# provides a shorthand using **arrow notation**:

```csharp
private string _author;
public string Author
{
    get => _author;
    set => _author = value;
}

private int _pageCount;
public int PageCount
{
    get => _pageCount;
    set => _pageCount = value;
}
```

---

## 🔒 Read-Only and Write-Only Properties

- If you only include a `get`, the property becomes **read-only**.
- If you only include a `set`, it becomes **write-only** (rarely used).

Example (read-only):

```csharp
public int PageCount
{
    get => _pageCount;
}
```

---

## 🧮 Computed Properties

Properties can be used to **calculate values dynamically** instead of just storing data.

Example:

```csharp
public string Description
{
    get => $"{Name} by {Author}, {PageCount} pages";
}
```

This `Description` property:

- Has no setter → **read-only**.
- Uses other properties to compute its value.

---

## ⚙️ Auto-Implemented Properties

C# also supports **auto-properties**, which eliminate the need for explicit backing fields. The compiler automatically creates them.

```csharp
public string ISBN { get; set; }
public decimal Price { get; set; }
```

Here, no `_isbn` or `_price` field is required—the property itself holds the data.

---

## ✅ Example: Full Book Class with Properties

```csharp
public class Book
{
    private string _name;
    private string _author;
    private int _pageCount;

    public string Name
    {
        get => _name;
        set => _name = value;
    }

    public string Author
    {
        get => _author;
        set => _author = value;
    }

    public int PageCount
    {
        get => _pageCount;
        set => _pageCount = value;
    }

    // Computed property
    public string Description
    {
        get => $"{Name} by {Author}, {PageCount} pages";
    }

    // Auto-implemented properties
    public string ISBN { get; set; }
    public decimal Price { get; set; }
}
```

---

## 📌 Key Takeaways

- Properties provide a **safe way** to access and update class fields.
- `get` and `set` blocks encapsulate the logic for reading and writing values.
- They can be **read-only**, **write-only**, **computed**, or **auto-generated**.
- Using properties avoids the need for cumbersome `Get` and `Set` methods, making code more readable and maintainable.

➡️ Next, we’ll explore **object initialization with properties** to make class instantiation even easier.
