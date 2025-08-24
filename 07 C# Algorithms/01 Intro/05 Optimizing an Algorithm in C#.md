# ⚡ Optimizing an Algorithm in C\#

## 📘 Introduction

Studying **algorithmic theory** is important, but it’s equally vital to apply theory into **practical coding**. Let’s look at an example in C# where we improve the efficiency of an algorithm that finds the **maximum of three numbers**.

---

## 🔎 Original Algorithm: `findMaximum`

The initial implementation compares the three numbers (`A`, `B`, `C`) with multiple checks.

### Issues with the Original Approach:

* Performs **redundant comparisons** (e.g., checking both `A > B` and later `B > A`).
* Requires handling equality cases explicitly.
* Less efficient and slightly harder to read.

---

## ✅ Refactored Algorithm: `findMaximum2`

We optimize the function by **tracking the maximum value** with a variable instead of doing repeated comparisons.

### Step-by-Step Logic:

1. Start with `max = A`.
2. Compare `B` with `max`.

   * If `B > max`, update `max = B`.
3. Compare `C` with `max`.

   * If `C > max`, update `max = C`.
4. Return `max`.

---

## 💻 Refactored C# Code

```csharp
// Original Algorithm (less efficient)
static int findMaximum(int A, int B, int C)
{
    if (A >= B && A >= C)
        return A;
    else if (B >= A && B >= C)
        return B;
    else
        return C;
}

// Optimized Algorithm (more efficient)
static int findMaximum2(int A, int B, int C)
{
    int max = A; // start with A as the max

    if (B > max)
        max = B; // update max if B is greater

    if (C > max)
        max = C; // update max if C is greater

    return max;
}
```

---

## 🧪 Testing the Algorithm

You can test the implementation in two ways:

1. **Terminal Run**

   * Use `dotnet run` to compile and execute.
   * Console will display the maximum for each test case.

2. **Run Configuration in IDE (e.g., VS Code)**

   * Setup a **console run configuration**.
   * Allows you to add **breakpoints** and debug step-by-step.
   * Example: Place a breakpoint on line 25 → Inspect variable values while stepping over code.

---

## 📊 Results

* Output returns the correct maximum number.
* The optimized algorithm requires **only 2 comparisons** instead of multiple redundant ones.
* Code is **cleaner, more readable, and efficient**.

---

## ⚠️ Assumptions in Optimization

* The `max` variable always holds the maximum of values processed **so far**.
* When checking `C > max`, we assume that `max` already represents the maximum of `A` and `B`.

👉 These assumptions help us **skip extra comparisons** and streamline the algorithm.

---

## ✅ Summary

* Original algorithm: multiple comparisons, handles equality explicitly.
* Optimized algorithm: uses a **max-tracking variable** → fewer comparisons (2 per call).
* Easier to read and maintain.
* Demonstrates how **theory + assumptions = practical optimization** in C#.

---

## 📌 Complete Optimized Code (Rewritten)

```csharp
static int findMaximum2(int A, int B, int C)
{
    int max = A;

    if (B > max)
        max = B;

    if (C > max)
        max = C;

    return max;
}
```
