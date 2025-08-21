# Reference and Out Parameters in C\#

C# provides special keywords `ref` and `out` that allow functions to directly modify variables passed into them. Normally, when you pass values into a function, the function **receives a copy** of the variable. That means changes inside the function **don’t affect the original variable**. But with `ref` and `out`, the behavior changes.

---

## 🔹 Default Behavior (Pass by Value)

When passing parameters by value, the function receives a copy of the data.

```csharp
static void TestFunc1(int arg1)
{
    arg1 += 10;
    Console.WriteLine($"Inside function: {arg1}");
}

int val1 = 10;
TestFunc1(val1);
Console.WriteLine($"Outside function: {val1}");
```

**Output:**

```
Inside function: 20
Outside function: 10
```

➡️ As you can see, the change doesn’t affect the original variable.

---

## 🔹 Using `ref`

The `ref` keyword tells the compiler to pass the argument **by reference**, not by value. This allows the function to directly modify the variable.

```csharp
static void TestFunc2(ref int arg1)
{
    arg1 += 10;
    Console.WriteLine($"Inside function (ref): {arg1}");
}

int val1 = 10;
TestFunc2(ref val1);
Console.WriteLine($"Outside function (ref): {val1}");
```

**Output:**

```
Inside function (ref): 20
Outside function (ref): 20
```

➡️ The change inside the function **is reflected outside** as well.

📌 Note: Both the **function definition** and the **function call** must explicitly use the `ref` keyword.

---

## 🔹 Using `out`

The `out` keyword is used to return multiple values from a function. Unlike `ref`, the caller **doesn’t need to initialize** the variable before passing it.

```csharp
static void PlusTimes(int arg1, int arg2, out int sum, out int product)
{
    sum = arg1 + arg2;
    product = arg1 * arg2;
}

int val1 = 20, val2 = 20;
PlusTimes(val1, val2, out int a, out int b);
Console.WriteLine($"Sum: {a}, Product: {b}");
```

**Output:**

```
Sum: 40, Product: 400
```

➡️ The `out` parameters **return values back to the caller**.

📌 Note: You must assign a value to an `out` parameter inside the function before returning.

---

## 🔹 When to Use `ref` vs `out`

| Feature                             | `ref`                       | `out`                      |
| ----------------------------------- | --------------------------- | -------------------------- |
| Must be initialized before calling? | ✅ Yes                       | ❌ No                       |
| Used for input?                     | ✅ Yes                       | ❌ No                       |
| Used for returning multiple values? | ⚠️ Possible, but not common | ✅ Yes                      |
| Common Use Case                     | Modifying existing values   | Returning multiple results |

---

## ⚠️ Best Practice

While `ref` and `out` are powerful, they are **not the preferred modern approach** for returning multiple values. Instead, newer C# code typically uses **tuples**:

```csharp
static (int sum, int product) PlusTimesTuple(int arg1, int arg2)
{
    return (arg1 + arg2, arg1 * arg2);
}

var result = PlusTimesTuple(20, 20);
Console.WriteLine($"Sum: {result.sum}, Product: {result.product}");
```

✅ This is more readable and avoids confusion with `out` parameters.

---

## ✨ Key Takeaways

* **By default**, parameters are passed by value (a copy).
* Use `ref` to modify an argument **inside and outside** the function.
* Use `out` to return **multiple values** from a function.
* Prefer **tuples** for modern C# code instead of `out`.

---
