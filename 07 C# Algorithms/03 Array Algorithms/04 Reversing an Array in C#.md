# Reversing an Array in C\#

As a software engineer, you may often need to **reorder data**. One common operation is **reversing an array**. There are two main ways to achieve this:

---

## 🔹 Approach 1: Create a New Reversed Array

1. **Create a new array** of the same length as the input.
2. **Iterate** through the new array.
3. Set the element at index `i` in the reversed array to the element at index `input.Length - i - 1` in the original array.

   * This takes the **last element of input** and places it at the **first index** of the reversed array.
   * The **first element of input** goes to the **last index** of the reversed array.

### Example Code

```csharp
using System;

class Program
{
    static void Main()
    {
        int[] input = { 1, 2, 3, 4, 5, 6 };
        int[] reversed = ReverseArray(input);

        foreach (int num in reversed)
        {
            Console.WriteLine(num);
        }
    }

    static int[] ReverseArray(int[] input)
    {
        int[] reversed = new int[input.Length];

        for (int i = 0; i < input.Length; i++)
        {
            reversed[i] = input[input.Length - i - 1];
        }

        return reversed;
    }
}
```

### ✅ Output

```
6
5
4
3
2
1
```

---

## 🔹 Approach 2: Reverse In-Place

Instead of creating a new array, we can **reverse the original array itself** by swapping elements.

1. Only iterate through **half** the array (`input.Length / 2`).
2. Swap elements at:

   * Index `i`
   * Index `input.Length - i - 1`
3. Use a **temporary variable** to prevent overwriting.

### Example Code

```csharp
using System;

class Program
{
    static void Main()
    {
        int[] input = { 1, 2, 3, 4, 5, 6 };

        ReverseInPlace(input);

        foreach (int num in input)
        {
            Console.WriteLine(num);
        }

        // Running again will restore the original order
        ReverseInPlace(input);
        Console.WriteLine("After running again:");
        foreach (int num in input)
        {
            Console.WriteLine(num);
        }
    }

    static void ReverseInPlace(int[] input)
    {
        for (int i = 0; i < input.Length / 2; i++)
        {
            int temp = input[i];
            input[i] = input[input.Length - i - 1];
            input[input.Length - i - 1] = temp;
        }
    }
}
```

### ✅ Output

```
6
5
4
3
2
1
After running again:
1
2
3
4
5
6
```

---

## 🔹 Key Notes

* **New array approach**: Simple, but requires **extra memory**.
* **In-place approach**: More **memory efficient**, modifies the original array.
* If the array has an **odd length**, the middle element stays in place.
* Running the in-place algorithm **twice restores the original array**.

---

## 📌 Same Code Again for Quick Copy-Paste

```csharp
using System;

class Program
{
    static void Main()
    {
        int[] input = { 1, 2, 3, 4, 5, 6 };

        // New array reversal
        int[] reversed = ReverseArray(input);
        foreach (int num in reversed)
            Console.WriteLine(num);

        Console.WriteLine("---");

        // In-place reversal
        ReverseInPlace(input);
        foreach (int num in input)
            Console.WriteLine(num);
    }

    static int[] ReverseArray(int[] input)
    {
        int[] reversed = new int[input.Length];
        for (int i = 0; i < input.Length; i++)
            reversed[i] = input[input.Length - i - 1];
        return reversed;
    }

    static void ReverseInPlace(int[] input)
    {
        for (int i = 0; i < input.Length / 2; i++)
        {
            int temp = input[i];
            input[i] = input[input.Length - i - 1];
            input[input.Length - i - 1] = temp;
        }
    }
}
```
