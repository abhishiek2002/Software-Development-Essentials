# Defining C# Classes

C# is an **object-oriented language**, which means all code lives in classes, and data types are fundamentally objects. Classes act as **blueprints** for creating your own objects.

---

## Defining a Class

To define a class in C#, use the `class` keyword followed by the name of the class:

```csharp
public class Book
{
    // Fields (member variables)
    private string _name;
    private string _author;
    private int _pageCount;

    // Constructor
    public Book(string name, string author, int pages)
    {
        _name = name;
        _author = author;
        _pageCount = pages;
    }

    // Method
    public string GetDescription()
    {
        return $"{_name} by {_author}";
    }
}
```

### Key Points:

* **Fields** hold data related to the object.
* **Constructor** initializes the object when created with `new`.
* **Methods** define behaviors that operate on the object.

---

## Using a Class

```csharp
class Program
{
    static void Main(string[] args)
    {
        Book b1 = new Book("War and Peace", "Leo Tolstoy", 800);
        Book b2 = new Book("The Grapes of Wrath", "John Steinbeck", 464);

        Console.WriteLine(b1.GetDescription());
        Console.WriteLine(b2.GetDescription());
    }
}
```

### Output:

```
War and Peace by Leo Tolstoy
The Grapes of Wrath by John Steinbeck
```

---

## Access Modifiers and Protection Levels

If you try to directly access a field (e.g., `b1._name = "Aldous Huxley"`), you will get an error:

```
'Book._name' is inaccessible due to its protection level.
```

This is because the fields are marked as `private`. We'll explore **access modifiers** (like `public`, `private`, `protected`) in more detail later.

---

✅ At this point, you can:

* Define classes
* Add fields, constructors, and methods
* Instantiate objects with `new`
* Understand why direct field access may be restricted
