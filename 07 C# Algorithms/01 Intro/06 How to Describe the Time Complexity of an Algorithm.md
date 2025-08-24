# ⏱️ How to Describe the Time Complexity of an Algorithm

## 📘 Introduction

Some algorithms are more efficient than others. To measure and compare this efficiency, we use **Big-O notation**. Big-O describes an algorithm’s performance in terms of **time** (execution speed) and sometimes **space** (memory usage), regardless of input size.

---

## 🔎 What is Big-O Notation?

Big-O notation:

* Provides a **high-level measure** of algorithm efficiency.
* Expresses how runtime (or memory usage) grows with input size $N$.
* Lets us compare algorithms **independent of input size**.

---

## 🔍 Example: Search Algorithms

1. **Constant Time (O(1))**

   * If the item is always the **first or last** element in a list.
   * Only need to check one (or two) positions, regardless of input size.

   👉 **Efficiency:** Runtime does not change with input size.

2. **Linear Time (O(N))**

   * If the item could be **anywhere in the list** and we don’t know where.
   * Might need to check **every element**.
   * **Best Case:** First item matches (O(1)).
   * **Worst Case:** Item doesn’t exist → must check all N elements (O(N)).

   👉 **Efficiency:** Runtime increases directly with input size.

---

## ⚖️ Best Case vs Worst Case

* **Best Case:** Minimum number of steps (ideal scenario).
* **Worst Case:** Maximum number of steps (pessimistic scenario).
* **Average Case:** Typical performance over many runs.

📌 In practice, we usually focus on the **worst case** when evaluating algorithms.

---

## 📊 Common Time Complexities

* **O(1)** → Constant time → Fastest.
* **O(log N)** → Logarithmic → Example: Binary search.
* **O(N)** → Linear → Example: Linear search.
* **O(N log N)** → Linearithmic → Example: Merge Sort, Quick Sort (average).
* **O(N²)** → Quadratic → Example: Bubble Sort, Insertion Sort (worst case).
* **O(2^N)** → Exponential → Example: Some recursive algorithms.
* **O(N!)** → Factorial → Example: Brute-force traveling salesman.

👉 The higher the growth rate, the **less efficient** the algorithm becomes as input size increases.

---

## 🗂️ Space Complexity

Big-O also describes **space usage**:

* **O(1):** Constant memory.
* **O(N):** Memory grows proportionally with input size.

Example:

* A simple counter uses O(1) space.
* Storing all elements of an input list requires O(N) space.

---

## ✅ Summary

* **Big-O notation** measures algorithm efficiency in terms of time and space.
* Focus is often on the **worst case** scenario.
* **Assumptions about data** can help reduce complexity (e.g., assuming sorted data).
* Common complexities: **O(1) → O(log N) → O(N) → O(N log N) → O(N²) → O(2^N)**.
* Big-O allows us to compare algorithms **independently of input size**.

> 🔑 **Key Idea:** Big-O = A mathematical way to compare algorithm efficiency as input size grows.
