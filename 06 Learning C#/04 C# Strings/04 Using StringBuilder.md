# Using StringBuilder in C\#

## Why Use StringBuilder?

- In .NET, **strings are immutable**. Every modification (like concatenation) creates a new string in memory.
- This repeated allocation can hurt **performance** and **memory usage**, especially when building large or frequently modified strings.
- `StringBuilder` (from the `System.Text` namespace) solves this by providing a **mutable** string buffer.

---

## Creating a StringBuilder

```csharp
using System.Text;

StringBuilder sb = new StringBuilder("Initial string", 200);
```

- `"Initial string"` → optional initial content.
- `200` → optional maximum capacity.

---

## Inspecting Properties

```csharp
Console.WriteLine($"Capacity: {sb.Capacity}, Length: {sb.Length}");
```

- `Capacity` → maximum allocated size.
- `Length` → current number of characters stored.

---

## Adding Content

```csharp
sb.Append("The quick brown fox ");
sb.AppendLine("jumped over the lazy dog.");
sb.AppendFormat(" He did this {0} times.\n", jumpCount);
sb.Append("He also jumped over ");
sb.AppendJoin(", ", animals); // e.g., goats, cats, pigs
```

### Methods:

- `Append` → adds text.
- `AppendLine` → adds text with newline.
- `AppendFormat` → adds formatted text.
- `AppendJoin` → joins a sequence with separators and appends.

---

## Modifying Content

```csharp
sb.Replace("fox", "cat");
sb.Insert(0, "This is the ");
```

- `Replace` → replaces occurrences of a substring.
- `Insert` → inserts text at a specific index.

---

## Finalizing the String

```csharp
string result = sb.ToString();
Console.WriteLine(result);
```

- `ToString()` converts the buffer into a normal immutable string.

---

## Example Output

```
Capacity: 200, Length: 15
Capacity: 200, Length: 100
This is the Initial stringThe quick brown cat jumped over the lazy dog.
He did this 10 times.
He also jumped over goats, cats, pigs
```

---

## When to Use

- Use **`StringBuilder`** when:

  - Concatenating strings inside **loops**.
  - Performing **repeated modifications**.
  - Building **large dynamic strings** (like reports or logs).

- For small/simple concatenations, normal `+` or interpolation is fine.

---

✅ **StringBuilder = Efficient, mutable string manipulation in C#**
