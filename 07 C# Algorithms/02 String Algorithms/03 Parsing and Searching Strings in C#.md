# Parsing and Searching Strings in C\#

## Overview

Searching within strings is a fundamental programming task. The efficiency of a search algorithm depends on what assumptions you can make about the data (e.g., whether it’s sorted). In C#, string parsing and searching can be done with built-in methods or manual iteration.

---

## 1. Using `Contains`

The simplest way to check if a substring exists is with the **`Contains`** method.

```csharp
string input = "hello world";
bool hasDoubleL = input.Contains("ll");
Console.WriteLine(hasDoubleL); // Output: True
```

* Case-sensitive by default
* Returns `true` only if the exact substring exists (e.g., "ll" must be consecutive)
* Inefficient for large-scale searches since it checks character by character until a match is found

➡️ To make the search case-insensitive, normalize the string using `.ToLower()` or `.ToUpper()`.

```csharp
bool hasDoubleLCaseInsensitive = input.ToLower().Contains("ll");
```

---

## 2. Iterating Through Characters

### Option 1: `foreach` loop

Good for processing **characters only**.

```csharp
foreach (char c in input)
{
    Console.WriteLine(c);
}
```

### Option 2: `for` loop

Gives access to both **characters and their indices**.

```csharp
for (int i = 0; i < input.Length; i++)
{
    char c = input[i];
    Console.WriteLine($"Index {i}: {c}");
}
```

---

## 3. Searching at Even Indices Only

Example: Find if a character exists **only at even positions** in the string.

```csharp
static bool ExistsAtEvenIndex(string s, char item)
{
    if (string.IsNullOrEmpty(s)) return false; // Base case

    for (int i = 0; i < s.Length; i += 2)
    {
        if (s[i] == item)
            return true;
    }

    return false;
}

// Example usage
Console.WriteLine(ExistsAtEvenIndex("hello", 'h')); // True
Console.WriteLine(ExistsAtEvenIndex("hello", 'e')); // False
```

* Skips odd indices (`i += 2`) → cuts search space in half
* Still **O(n)** but more efficient when constraints are known

---

## 4. Edge Cases

* Empty or null strings → must return `false`
* Case sensitivity → use normalization if needed

---

## Time Complexity

* `Contains` → **O(n)** worst case
* `foreach` / `for` → **O(n)**
* Optimized search at even indices → still **O(n)**, but with half the iterations

---

## Key Takeaways

* Use **`Contains`** for quick, simple substring checks.
* Use **loops** for fine-grained control (e.g., index-based searches).
* Optimize searches by leveraging assumptions about data (e.g., checking only even indices).
* Always handle **edge cases** like null or empty strings.
