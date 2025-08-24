# Linked List Algorithms in C\#

Understanding linked lists is one thing—but being able to **write your own algorithms** on them is where the real power comes in. Although C# provides a built-in `LinkedList<T>` class, sometimes you’ll need **custom algorithms** that aren’t provided in the standard library. Let’s explore how to build a simple **custom linked list class** and implement an algorithm to **delete the back half** of the list.

---

## 🔹 Building a Custom Linked List

We’ll need two classes:

* **Node** → represents each element (data + pointer to next node)
* **LinkedList** → manages the `head` node and operations

```csharp
public class LinkedList
{
    public Node head;

    public class Node
    {
        public int data;
        public Node next;

        public Node(int data)
        {
            this.data = data;
            this.next = null;
        }
    }
}
```

Here:

* `head` → first node in the list
* `Node` class → holds `data` and `next` pointer

---

## 🔹 Creating the Linked List

```csharp
LinkedList linkedList = new LinkedList();

LinkedList.Node firstNode = new LinkedList.Node(5);
LinkedList.Node secondNode = new LinkedList.Node(8);
LinkedList.Node thirdNode = new LinkedList.Node(13);
LinkedList.Node fourthNode = new LinkedList.Node(21);

linkedList.head = firstNode;
firstNode.next = secondNode;
secondNode.next = thirdNode;
thirdNode.next = fourthNode;
// fourthNode.next is null (end of list)
```

At this point, our linked list looks like:

```
5 → 8 → 13 → 21 → null
```

---

## 🔹 Displaying the List

We can traverse and print contents using a loop:

```csharp
public void DisplayContents()
{
    Node current = head;
    while (current != null)
    {
        Console.Write(current.data + " → ");
        current = current.next;
    }
    Console.WriteLine("null");
}
```

Example Output:

```
5 → 8 → 13 → 21 → null
```

---

## 🔹 Deleting the Back Half

We want an algorithm that **removes the second half of the list**.

### Key Idea

* Use **two pointers**: `slow` and `fast`
* `fast` moves **two steps** while `slow` moves **one step**
* When `fast` reaches the end → `slow` is at the **middle**
* Use a `previous` pointer to track the node before `slow`
* Set `previous.next = null` → cutting off the back half

### Implementation

```csharp
public void DeleteBackHalf()
{
    // Base case: empty or single element list
    if (head == null || head.next == null)
    {
        head = null;
        return;
    }

    Node slow = head;
    Node fast = head;
    Node previous = null;

    while (fast != null && fast.next != null)
    {
        previous = slow;
        slow = slow.next;
        fast = fast.next.next;
    }

    // Cut the list in half
    if (previous != null)
    {
        previous.next = null;
    }
}
```

---

## 🔹 Testing the Algorithm

```csharp
linkedList.DisplayContents();   // Output: 5 → 8 → 13 → 21 → null
linkedList.DeleteBackHalf();
linkedList.DisplayContents();   // Output: 5 → 8 → null
```

✅ After running, the list is successfully truncated to its front half.

---

## 🔹 Why This Works

* Using **two pointers** ensures efficient traversal.
* Time Complexity: **O(n)** (single pass through list)
* Space Complexity: **O(1)** (no extra memory)

---

## 🔹 Extensions & Practice

* Write an algorithm to **reverse a linked list**.
* Implement **insertion at a specific position**.
* Implement **deletion of a node by value**.

Practicing these builds deeper understanding of how pointers and nodes interact in memory.

---

## 📌 Full Code

```csharp
using System;

public class LinkedList
{
    public Node head;

    public class Node
    {
        public int data;
        public Node next;

        public Node(int data)
        {
            this.data = data;
            this.next = null;
        }
    }

    public void DisplayContents()
    {
        Node current = head;
        while (current != null)
        {
            Console.Write(current.data + " → ");
            current = current.next;
        }
        Console.WriteLine("null");
    }

    public void DeleteBackHalf()
    {
        if (head == null || head.next == null)
        {
            head = null;
            return;
        }

        Node slow = head;
        Node fast = head;
        Node previous = null;

        while (fast != null && fast.next != null)
        {
            previous = slow;
            slow = slow.next;
            fast = fast.next.next;
        }

        if (previous != null)
        {
            previous.next = null;
        }
    }
}

class Program
{
    static void Main()
    {
        LinkedList linkedList = new LinkedList();
        LinkedList.Node firstNode = new LinkedList.Node(5);
        LinkedList.Node secondNode = new LinkedList.Node(8);
        LinkedList.Node thirdNode = new LinkedList.Node(13);
        LinkedList.Node fourthNode = new LinkedList.Node(21);

        linkedList.head = firstNode;
        firstNode.next = secondNode;
        secondNode.next = thirdNode;
        thirdNode.next = fourthNode;

        linkedList.DisplayContents();   // 5 → 8 → 13 → 21 → null
        linkedList.DeleteBackHalf();
        linkedList.DisplayContents();   // 5 → 8 → null
    }
}
```

---

✅ By building custom linked list algorithms, you gain fine-grained control over how data is stored and manipulated, making you a more efficient problem-solver.
