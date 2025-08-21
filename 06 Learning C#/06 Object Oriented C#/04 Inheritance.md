# Inheritance in C\#

C# is an **object-oriented language**, which means we can build class hierarchies using **inheritance**. Inheritance allows us to eliminate duplicate code, reuse functionality, and organize our classes into logical parent-child relationships.

---

## Why Inheritance?

Suppose we want to represent different types of **publications**, like `Book` and `Magazine`. Both have similar fields, such as `PageCount` and `Price`. Instead of duplicating these fields in both classes, we create a **parent class** (`Publication`) that contains the common functionality, and then make `Book` and `Magazine` subclasses.

This way:

* Shared code lives in the **parent class**.
* Specialized data and behavior live in the **child classes**.

---

## Example: Publication, Book, and Magazine

```csharp
// Parent class
public class Publication
{
    private string _name;

    public string Name
    {
        get => _name;
        set
        {
            if (string.IsNullOrEmpty(value))
                throw new Exception("Name cannot be blank");
            _name = value;
        }
    }

    public int PageCount { get; set; }
    public decimal Price { get; set; }

    // Virtual method that can be overridden by subclasses
    public virtual string GetDescription()
    {
        return $"{Name}, {PageCount} pages";
    }
}

// Subclass Book
public class Book : Publication
{
    public string Author { get; set; }

    // Constructor passes values to the parent (base) class
    public Book(string name, string author, int pageCount, decimal price)
        : base()
    {
        Name = name;
        Author = author;
        PageCount = pageCount;
        Price = price;
    }

    // Override virtual method
    public override string GetDescription()
    {
        return $"{Name} by {Author}, {PageCount} pages";
    }
}

// Subclass Magazine
public class Magazine : Publication
{
    public string Publisher { get; set; }

    public Magazine(string name, string publisher, int pageCount, decimal price)
        : base()
    {
        Name = name;
        Publisher = publisher;
        PageCount = pageCount;
        Price = price;
    }
    // Inherits default GetDescription() from Publication
}
```

---

## Key Concepts

* **Parent (Base) Class** → `Publication` (holds shared fields and methods)
* **Child (Derived) Classes** → `Book`, `Magazine`
* **Constructor Chaining** → Child constructors call the parent constructor with `base()`
* **Virtual Methods** → Declared in the parent using `virtual`
* **Overriding** → Child classes replace the parent method using `override`
* **Exception Handling in Properties** → We can validate input (e.g., `Name` cannot be empty)

---

## Example Usage

```csharp
Book b = new Book("The Grapes of Wrath", "Steinbeck", 464, 14.99m);
Magazine m = new Magazine("Time", "Time USA, LLC", 52, 5.99m);

Console.WriteLine(b.GetDescription());
// Output: The Grapes of Wrath by Steinbeck, 464 pages

Console.WriteLine(m.GetDescription());
// Output: Time, 52 pages

// Test validation
// m.Name = ""; // Throws exception: "Name cannot be blank"
```

---

## Benefits of Inheritance

✅ Removes duplicate code
✅ Keeps class hierarchy organized
✅ Allows polymorphism (`GetDescription` behaves differently depending on the object type)
✅ Makes code more maintainable and extensible

---

Would you like me to also add a **diagram (UML-style class hierarchy)** showing `Publication` as the parent with `Book` and `Magazine` as subclasses?
