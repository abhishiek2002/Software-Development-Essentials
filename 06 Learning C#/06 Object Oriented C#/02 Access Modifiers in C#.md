### Access Modifiers in C\#

Access modifiers in C# control how class members (fields, methods, properties, etc.) can be accessed from other parts of a program. They are a key part of **encapsulation**, one of the core principles of object-oriented programming.

---

#### Common Access Modifiers

1. **`public`**

   * Accessible from anywhere in the program.
   * Example:

     ```csharp
     public void A1() { }
     ```

     Any code can call `A1()`.

2. **`protected`**

   * Accessible only within the class itself **and** in derived (subclass) types.
   * Example:

     ```csharp
     protected void A2() { }
     ```

     Can be used in the base class or subclasses, but not outside of them.

3. **`private`** (default)

   * Accessible only within the class itself.
   * Example:

     ```csharp
     private void A3() { }
     ```

     Cannot be used outside the class.

---

#### Example with Inheritance

```csharp
class A
{
    public void A1() { }
    protected void A2() { }
    private void A3() { }
}

class B : A
{
    public void Test()
    {
        A1();  // ✅ Works (public)
        A2();  // ✅ Works (protected)
        // A3();  // ❌ Error (private)
    }
}

class Program
{
    static void Main()
    {
        A obj = new A();
        obj.A1();  // ✅ Works (public)
        // obj.A2();  // ❌ Error (protected)
        // obj.A3();  // ❌ Error (private)
    }
}
```

---

#### Applying Access Modifiers to Fields

By default, fields should not be `public`. Making them public leads to **tight coupling** and breaks encapsulation. Instead, you:

* Use **methods** (getters/setters) to control access.
* Or better, use **properties** (C# feature) for cleaner syntax.

Example with manual getter/setter:

```csharp
class Book
{
    private string _name;
    private string _author;
    private int _pages;

    public void SetName(string s) => _name = s;
    public string GetName() => _name;

    public void SetAuthor(string s) => _author = s;
    public void SetPageCount(int c) => _pages = c;
}
```

---

#### Why Not Public Fields?

* Changing a public field directly breaks abstraction.
* If implementation changes, external code also needs to change.
* Getter/Setter (or properties) allow flexibility without breaking other code.

---

✅ Next Step: Instead of writing lots of `Get`/`Set` methods, use **C# Properties**, which provide a more elegant way to control access to fields.
