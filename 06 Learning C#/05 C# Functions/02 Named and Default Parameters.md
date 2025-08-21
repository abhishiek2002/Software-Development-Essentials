# Named and Default Parameters in C\#

In C#, functions support **default parameter values** and **named parameters**. These features make your code easier to read and more flexible when calling functions.

---

## Default Parameters

A **default parameter** lets you assign a value to a parameter in the function definition. If no value is passed when the function is called, the default will be used.

### Example:

```csharp
void PrintWithPrefix(string str, string prefix = "")
{
    Console.WriteLine(prefix + " " + str);
}

// Calls
PrintWithPrefix("Hello there");        // Uses default prefix ""
PrintWithPrefix("Hello there", ">>"); // Uses provided prefix
```

### Key Points:

* Default parameters must be defined at the end of the parameter list.
* If a value is passed, it overrides the default.
* If no value is passed, the default is used.

---

## Named Parameters

A **named parameter** allows you to specify the parameter name when calling a function. This improves readability and allows you to pass arguments in any order.

### Example:

```csharp
PrintWithPrefix(str: "Hello there", prefix: ">>");
PrintWithPrefix(prefix: "--", str: "Hi!");
```

### Key Points:

* The order of parameters does not matter if you use names.
* Useful when a function has many optional/default parameters.
* Improves code readability by making it clear what each argument means.

---

## Combining Default and Named Parameters

You can combine both features for maximum flexibility.

### Example:

```csharp
void ShowMessage(string message, string sender = "System", string prefix = "")
{
    Console.WriteLine($"{prefix}[{sender}]: {message}");
}

// Calls
ShowMessage("Update complete");
ShowMessage("Low battery", prefix: "!!!");
ShowMessage("File saved", sender: "Editor", prefix: "--");
```

---

## Practical Use Cases

1. **Functions with many optional parameters** → avoid writing multiple overloaded functions.
2. **Improved readability** → calling code shows clearly which argument belongs to which parameter.
3. **Flexibility** → call functions with only the parameters you care about.

---

✅ **Summary**:

* Use **default parameters** to avoid unnecessary empty or placeholder arguments.
* Use **named parameters** for clarity and flexibility.
* Combine them for more readable and maintainable code.
