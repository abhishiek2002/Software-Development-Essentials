# Linked List in C# – Introduction

A **linked list** is a commonly used **linear data structure** for storing and retrieving data. While it is similar to an array in being linear and ordered, it is fundamentally different in **memory storage and access**.

---

## 🔹 Key Characteristics

* **Linear structure:** Elements are ordered one after another.
* **Not contiguous:** Unlike arrays, linked list elements are not stored in contiguous memory locations.
* **No index:** You cannot directly access an element using an index like in arrays.
* **Nodes:** Each element in a linked list is called a **node**.

---

## 🔹 Structure of a Node

Each node contains:

1. **Data** → The value stored.
2. **Pointer (Next)** → A reference to the next node in the list.

Example:

```
[Data: 5 | Next] → [Data: 8 | Next] → [Data: 13 | Next: null]
```

* The first node is called the **head**.
* The last node is called the **tail**, and its `Next` pointer is `null`.

---

## 🔹 Example Walkthrough

* **Head Node:** Contains `5`.
* `5` points to `8` (second node).
* `8` points to `13` (third node).
* `13` points to `null` → End of the list.

---

## 🔹 Advantages Over Arrays

* **Dynamic Size:** The linked list size can change at runtime.

  * Arrays have a fixed size once created.
* **Efficient Deletions/Insertions:** You can add or remove elements without shifting elements.

  * Example: To remove half the dataset, you can simply adjust the middle node’s pointer to `null`, unlinking the rest.
* **Garbage Collection (in C#):** Unlinked nodes are cleaned automatically by the garbage collector.

---

## 🔹 Limitations Compared to Arrays

* **No random access:** You must traverse from the head to reach a specific element.
* **Extra memory:** Each node needs storage for both data and pointer.

---

## 🔹 C# Example Code

Here’s a simple implementation of a **singly linked list** in C#:

```csharp
using System;

class Node
{
    public int Data;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Next = null;
    }
}

class LinkedList
{
    public Node Head;

    // Add element at end
    public void Add(int data)
    {
        Node newNode = new Node(data);
        if (Head == null)
        {
            Head = newNode;
            return;
        }

        Node current = Head;
        while (current.Next != null)
        {
            current = current.Next;
        }
        current.Next = newNode;
    }

    // Print linked list
    public void PrintList()
    {
        Node current = Head;
        while (current != null)
        {
            Console.Write(current.Data + " → ");
            current = current.Next;
        }
        Console.WriteLine("null");
    }
}

class Program
{
    static void Main()
    {
        LinkedList list = new LinkedList();
        list.Add(5);
        list.Add(8);
        list.Add(13);

        list.PrintList();
    }
}
```

### ✅ Output

```
5 → 8 → 13 → null
```

---

## 🔹 Summary

* **Array:** Fixed size, contiguous memory, fast random access.
* **Linked List:** Dynamic size, non-contiguous memory, efficient insert/delete, but slower access.

---

## 📌 Same Code Again for Quick Copy-Paste

```csharp
using System;

class Node
{
    public int Data;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Next = null;
    }
}

class LinkedList
{
    public Node Head;

    public void Add(int data)
    {
        Node newNode = new Node(data);
        if (Head == null)
        {
            Head = newNode;
            return;
        }

        Node current = Head;
        while (current.Next != null)
        {
            current = current.Next;
        }
        current.Next = newNode;
    }

    public void PrintList()
    {
        Node current = Head;
        while (current != null)
        {
            Console.Write(current.Data + " → ");
            current = current.Next;
        }
        Console.WriteLine("null");
    }
}

class Program
{
    static void Main()
    {
        LinkedList list = new LinkedList();
        list.Add(5);
        list.Add(8);
        list.Add(13);

        list.PrintList();
    }
}
```
