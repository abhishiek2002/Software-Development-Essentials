# Writing Comments in C\#

Comments in C# are an essential way to document your code, making it easier to understand when you return to it later or when someone else reads it. C# supports three main types of comments:

---

## 1. Single-Line Comments

Single-line comments begin with **`//`** and are best suited for short explanations.

```csharp
// This is a single-line comment
int x = 10; // You can also add it at the end of a statement
```

They are typically used for brief notes or to clarify specific lines of code.

---

## 2. Multi-Line Comments

Multi-line comments begin with **`/*`** and end with **`*/`**, allowing text to span multiple lines.

```csharp
/*
 This is a multi-line comment.
 It can span across multiple lines.
 Useful for longer explanations.
*/
```

Use these when you need more detailed documentation within your code.

---

## 3. XML Documentation Comments

XML documentation comments start with **`///`** and contain XML tags. They are especially powerful because tools like Visual Studio and .NET can use them to generate external documentation.

```csharp
/// <summary>
/// This is the main entry point of the application.
/// </summary>
/// <param name="args">An array of command-line arguments.</param>
/// <returns>No return value.</returns>
static void Main(string[] args)
{
    Console.WriteLine("Hello World");
}
```

Common XML tags include:

* `<summary>` → Describes the purpose of a class, method, or property.
* `<param>` → Documents a method parameter.
* `<returns>` → Describes the return value of a method.

There are many other tags (`<example>`, `<remarks>`, `<exception>`, etc.) for advanced documentation needs.

---

## Generating Documentation from XML Comments

You can configure your **.csproj** file to generate an XML documentation file when you build your project.

Example modification in `.csproj`:

```xml
<PropertyGroup>
  <GenerateDocumentationFile>true</GenerateDocumentationFile>
  <DocumentationFile>Comments.xml</DocumentationFile>
</PropertyGroup>
```

When you run:

```bash
 dotnet build
```

The compiler will produce an **`Comments.xml`** file containing all extracted documentation comments.

This file can then be processed by tools to generate professional API documentation for your project.

---

## Best Practices for Writing Comments

* Use comments to **explain why** code exists, not just what it does.
* Keep comments **up to date** with code changes.
* Favor **clear code** over excessive commenting.
* Use **XML comments** consistently for public APIs.

---

✅ **Summary:**
C# provides three types of comments:

1. `//` → Single-line (short notes).
2. `/* ... */` → Multi-line (longer explanations).
3. `///` → XML documentation (structured, generates docs).

Together, these tools make your C# programs more readable, maintainable, and professional.
