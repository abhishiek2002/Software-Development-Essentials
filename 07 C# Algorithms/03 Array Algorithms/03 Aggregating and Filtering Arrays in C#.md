# Aggregating and Filtering Arrays in C\#

This guide explains how to **aggregate** (combine) two arrays and **filter** (select) only the values you want from them. The example focuses on filtering **even numbers**.

---

## 🔹 What is Aggregating and Filtering?

* **Aggregating:** Combining two or more datasets into one.
* **Filtering:** Removing data that does not meet specific requirements.

👉 Example: Given two arrays, we want to create a new array containing only **even numbers** from both.

---

## 🔹 Different Approaches

1. **Merge then filter:** Merge arrays first, then remove unwanted items.
2. **Check before adding (preferred):** Check each number before adding it to the new array.
3. **Sorting (not useful here):** Sorting doesn’t help because even numbers can be large or small.

➡️ In this lesson, we use **Approach 2 (check before adding)**.

---

## 🔹 Implementation Steps

1. **Function Input:** Accepts two arrays.
2. **Result Storage:** Use an `ArrayList` to collect even numbers (since we don’t know how many there will be).

   * Why `ArrayList`?

     * Dynamic size (no index out-of-bounds error).
     * Avoid wasting extra space.
3. **Iteration:** Loop through each array using `foreach`.

   * Check if number is **even** using modulo `%`.
   * If even, add to `ArrayList`.
4. **Conversion:** Convert `ArrayList` → `int[]`.

   * Because `ArrayList.ToArray()` returns an **object array**.
5. **Return Result:** Send back the new array.

---

## 🔹 Even Number Check

We use the modulo operator `%`:

```csharp
if (number % 2 == 0)
{
    // Number is even
}
```

---

## 🔹 Full Code Example

```csharp
using System;
using System.Collections;

class Program
{
    static void Main()
    {
        int[] array1 = { 1, 2, 3, 4, 5 };
        int[] array2 = { 6, 7, 8, 9, 10 };

        int[] result = GetEvenNumbers(array1, array2);

        foreach (int num in result)
        {
            Console.WriteLine(num);
        }
    }

    static int[] GetEvenNumbers(int[] arr1, int[] arr2)
    {
        ArrayList result = new ArrayList();

        // Check even numbers in first array
        foreach (int num in arr1)
        {
            if (num % 2 == 0)
            {
                result.Add(num);
            }
        }

        // Check even numbers in second array
        foreach (int num in arr2)
        {
            if (num % 2 == 0)
            {
                result.Add(num);
            }
        }

        // Convert ArrayList to int[]
        return (int[])result.ToArray(typeof(int));
    }
}
```

---

## 🔹 Output Example

```
2
4
6
8
10
```

---

## 🔹 Notes & Extensions

* ✅ No duplicates were present, but you could add logic to handle duplicates.
* ✅ You could modify the first array instead of returning a new one.
* ✅ Algorithm choice can depend on expected **data distribution**.

---

## 📌 Same Code Again for Quick Copy-Paste

```csharp
using System;
using System.Collections;

class Program
{
    static void Main()
    {
        int[] array1 = { 1, 2, 3, 4, 5 };
        int[] array2 = { 6, 7, 8, 9, 10 };

        int[] result = GetEvenNumbers(array1, array2);

        foreach (int num in result)
        {
            Console.WriteLine(num);
        }
    }

    static int[] GetEvenNumbers(int[] arr1, int[] arr2)
    {
        ArrayList result = new ArrayList();

        foreach (int num in arr1)
        {
            if (num % 2 == 0)
                result.Add(num);
        }

        foreach (int num in arr2)
        {
            if (num % 2 == 0)
                result.Add(num);
        }

        return (int[])result.ToArray(typeof(int));
    }
}
```


```csharp
using System;
using System.Collections;

class Program
{
    // Function to aggregate and filter even numbers from two arrays
    static int[] AggregateAndFilter(int[] arr1, int[] arr2)
    {
        ArrayList result = new ArrayList();

        // Iterate through first array
        foreach (int num in arr1)
        {
            if (num % 2 == 0) // check even
            {
                result.Add(num);
            }
        }

        // Iterate through second array
        foreach (int num in arr2)
        {
            if (num % 2 == 0) // check even
            {
                result.Add(num);
            }
        }

        // Convert ArrayList to int[]
        return (int[])result.ToArray(typeof(int));
    }

    static void Main(string[] args)
    {
        int[] array1 = { 1, 2, 3, 4, 5 };
        int[] array2 = { 6, 7, 8, 9, 10 };

        int[] evenNumbers = AggregateAndFilter(array1, array2);

        Console.WriteLine("Even numbers from both arrays:");
        foreach (int num in evenNumbers)
        {
            Console.WriteLine(num);
        }
    }
}
```