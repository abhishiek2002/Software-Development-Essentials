# Linear Search in Arrays using C\#

## Overview

Linear search (or sequential search) is a fundamental algorithm for searching through arrays. It checks each element in order until the desired value is found or the array ends.

---

## 1. Boolean Linear Search

Return `true` if the item exists, otherwise `false`.

```csharp
bool LinearSearch(int[] arr, int N)
{
    foreach (int item in arr)
    {
        if (item == N)
            return true;
    }
    return false;
}

// Usage
int[] numbers = {1, 2, 3, 4, 5};
Console.WriteLine(LinearSearch(numbers, 4)); // True
Console.WriteLine(LinearSearch(numbers, 8)); // False
```

---

## 2. Return Item or Sentinel Value

Return the item if found, otherwise return a **sentinel value**.

```csharp
int LinearSearchReturnItem(int[] arr, int N)
{
    foreach (int item in arr)
    {
        if (item == N)
            return item;
    }
    return -1; // Sentinel value
}

// Usage
Console.WriteLine(LinearSearchReturnItem(numbers, 4)); // 4
Console.WriteLine(LinearSearchReturnItem(numbers, 8)); // -1
```

Alternatively, you can return `null` using nullable type:

```csharp
int? LinearSearchReturnNullable(int[] arr, int N)
{
    foreach (int item in arr)
    {
        if (item == N)
            return item;
    }
    return null;
}
```

---

## 3. Using Built-in Array Methods

C# provides **`Array.Find`** and **`Array.FindAll`** to simplify searching.

### Find First Matching Element

```csharp
int item = Array.Find(numbers, element => element == 3);
Console.WriteLine(item); // 3
```

### Find All Matching Elements

```csharp
int[] items = Array.FindAll(numbers, element => element >= 5);
foreach (int i in items)
{
    Console.WriteLine(i);
}
```

* `Find` returns the **first element** meeting the condition.
* `FindAll` returns **all elements** that meet the condition as a new array.
* If no items match, `FindAll` returns an empty array.

---

## 4. Summary

* Linear search is **simple but inefficient** for large arrays (**O(n)**).
* Use **Boolean, item return, or nullable** approaches depending on your needs.
* Built-in methods like `Array.Find` and `Array.FindAll` **simplify code**.
* For index-based operations, there are alternatives, but these two functions are most commonly used for array searches.
