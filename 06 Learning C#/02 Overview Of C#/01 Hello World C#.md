# Hello World in C\#

## The Tradition

In software development, it's common to start learning a new language with a **Hello World** program. This simple exercise helps you get your environment set up and ensures that your code compiles and runs successfully.

---

## Creating a Console App

1. Open a terminal and navigate to your project folder (e.g., `start/overview/hello world`).

2. Run the following command:

   ```bash
   dotnet new console
   ```

   This generates a new C# console application.

3. After it finishes, you’ll see files like:

   * `hello world.csproj` → The project file
   * `Program.cs` → The main source code file
   * `obj/` folder → Build artifacts

---

## Program Structure

When you open `Program.cs`, .NET auto-generates some starter code:

* **`using System;`** → Imports the .NET system namespace.
* **Namespace** → Organizes code to prevent naming conflicts.
* **Class `Program`** → Container for the code.
* **`Main` method** → The entry point of the program. Execution starts here.

Inside `Main`, the `Console.WriteLine()` method outputs text to the terminal.

Example:

```csharp
Console.WriteLine("Hello World");
```

---

## Adding User Input

We can extend the Hello World program to ask for the user’s name:

```csharp
Console.WriteLine("Hello World");
Console.WriteLine("What is your name?");

string str = Console.ReadLine();
Console.WriteLine("Why hello there, " + str);
```

* **`Console.ReadLine()`** → Reads input from the user.
* **String variable** → Stores the input.
* **Concatenation (`+`)** → Combines text with the variable.

When run, the program outputs:

```
Hello World
What is your name?
Joe
Why hello there, Joe
```

---

## Simplifying with Top-Level Statements (C# 9+)

C# 9 introduced **top-level statements**, which allow you to skip namespaces, classes, and `Main()` boilerplate for simple apps.

Example:

```csharp
Console.WriteLine("Hello World");
Console.WriteLine("What is your name?");

string str = Console.ReadLine();
Console.WriteLine("Why hello there, " + str);
```

This is functionally identical but much simpler. Perfect for small programs.

---

✅ You’ve now created and run your first C# program, including both **output** and **input** handling.
