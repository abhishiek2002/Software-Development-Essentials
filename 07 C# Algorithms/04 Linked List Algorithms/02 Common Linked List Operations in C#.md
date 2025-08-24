# Common Linked List Operations in C\#

Now that we understand what a **linked list** is, let’s explore how to use it in **C#**. Instead of building our own linked list from scratch, C# provides a **built-in linked list class** in the `System.Collections.Generic` namespace.

---

## 🔹 Using the Built-in LinkedList Class

* Defined in `System.Collections.Generic`.
* **Generic type:** Can store any type (`int`, `double`, `string`, or even custom objects).
* Abstracts away the details of **nodes and pointers**.

### Example: Creating a Linked List of Strings

```csharp
using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        // Create a linked list of strings
        LinkedList<string> names = new LinkedList<string>();

        // Add elements
        names.AddLast("Sarah");
        names.AddLast("Polly");
        names.AddLast("Rebecca");
        names.AddLast("Jess");
        names.AddLast("Jackie");

        // Add to the front
        names.AddFirst("Zara");

        // Check if list contains an item
        Console.WriteLine(names.Contains("Polly")); // True

        // Get the count
        Console.WriteLine("Count: " + names.Count);

        // Remove elements
        names.RemoveFirst(); // Removes Zara
        names.Remove("Sarah"); // Removes Sarah

        // Print list contents
        foreach (string item in names)
        {
            Console.Write(item + " → ");
        }
        Console.WriteLine("null");
    }
}
```

### ✅ Sample Output

```
True
Count: 6
Polly → Rebecca → Jess → Jackie → null
```

---

## 🔹 Common Operations Available

1. **Adding Data**

   * `AddLast(value)` → Adds to the end.
   * `AddFirst(value)` → Adds to the front.
   * `AddAfter(node, value)` → Adds after a specific node.
   * `AddBefore(node, value)` → Adds before a specific node.

2. **Checking Data**

   * `Contains(value)` → Returns `true` if value exists.
   * `Count` → Returns the number of elements.

3. **Removing Data**

   * `Remove(value)` → Removes the specified value.
   * `RemoveFirst()` → Removes the first element.
   * `RemoveLast()` → Removes the last element.

4. **Traversal**

   * Use a `foreach` loop to traverse elements in order.

---

## 🔹 Abstracted Nodes

* While a **linked list is built from nodes internally**, in the built-in class, the node concept is **abstracted** away.
* However, C# provides a `LinkedListNode<T>` type if you want to work directly with nodes.

  * Each node has:

    * `.Value` → Data inside the node.
    * `.Next` → Pointer to the next node.
    * `.Previous` → Pointer to the previous node (because C# uses a **doubly linked list** internally).

---

## 🔹 Why Use the Built-in LinkedList?

* Saves you from writing **boilerplate code** for node management.
* Handles **pointer manipulation** automatically.
* Provides a **clean interface** with intuitive methods.
* Example of how **interfaces abstract complexity**, letting developers focus on **data manipulation** rather than low-level implementation.

---

## 📌 Same Code Again for Quick Copy-Paste

```csharp
using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        LinkedList<string> names = new LinkedList<string>();

        names.AddLast("Sarah");
        names.AddLast("Polly");
        names.AddLast("Rebecca");
        names.AddLast("Jess");
        names.AddLast("Jackie");
        names.AddFirst("Zara");

        Console.WriteLine(names.Contains("Polly"));
        Console.WriteLine("Count: " + names.Count);

        names.RemoveFirst();
        names.Remove("Sarah");

        foreach (string item in names)
            Console.Write(item + " → ");

        Console.WriteLine("null");
    }
}
```
