# Binary Search Arrays in C\#

## 🔹 Concept

* Binary Search is a **divide and conquer** algorithm.
* Assumes the array is **sorted (ascending)**.
* Each comparison cuts the search space in **half**.
* **Time Complexity**:

  * **Linear search** → O(n)
  * **Binary search** → O(log n)

---

## 🔹 Manual Implementation

```csharp
using System;

class Program
{
    static bool BinarySearch(int[] inputArray, int target)
    {
        int min = 0;
        int max = inputArray.Length - 1;

        while (min <= max)
        {
            int mid = (min + max) / 2;

            if (inputArray[mid] == target)
            {
                return true; // Found
            }
            else if (target < inputArray[mid])
            {
                max = mid - 1; // Search left half
            }
            else
            {
                min = mid + 1; // Search right half
            }
        }

        return false; // Not found
    }

    static void Main()
    {
        int[] numbers = { 1, 3, 5, 7, 9, 11, 13 };

        Console.WriteLine(BinarySearch(numbers, 5));   // true
        Console.WriteLine(BinarySearch(numbers, 6));   // false
    }
}
```

---

## 🔹 Built-in Method

C# provides a built-in binary search:

```csharp
int[] numbers = { 1, 3, 5, 7, 9, 11, 13 };
int index = Array.BinarySearch(numbers, 5);

if (index >= 0)
    Console.WriteLine($"Found at index {index}");
else
    Console.WriteLine("Not found");
```

* Returns the **index** of the found element.
* Returns a **negative number** if not found.

---

## 🔹 Assumptions & Caveats

* **Array must be sorted** (ascending order).
* If unsorted → results will be invalid.
* If you must sort first, factor in sorting cost (O(n log n)).
* Best used when:

  * Data is already sorted.
  * Multiple searches are required.

---

⚖️ **Comparison**:

* Use **Linear Search** if data is small or unsorted.
* Use **Binary Search** if data is sorted or frequently queried.
