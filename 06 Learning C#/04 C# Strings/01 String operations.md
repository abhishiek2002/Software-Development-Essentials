# String Operations in C\#

Working with strings is essential in most applications. C# provides a **rich set of methods and properties** through the `String` class to make processing text easy.

---

## 1. Strings are Objects

In C#, strings are objects, not primitive types. They come with built-in properties and methods.

### Example:

```csharp
string str1 = "The quick brown fox jumps over the lazy dog";
string str2 = "This is a string";
string str3 = "THIS IS A STRING";

Console.WriteLine(str1.Length); // Length property
Console.WriteLine(str1[14]);    // Access individual characters
```

* `Length`: gives the number of characters in the string.
* Indexer (`[]`): allows access to individual characters like an array.

---

## 2. Iterating Over Strings

Strings are sequences of characters, so they can be iterated with loops:

```csharp
foreach (char c in str1)
{
    Console.Write(c);
    if (c == 'b')
    {
        Console.WriteLine();
        break; // stop when 'b' is found
    }
}
```

---

## 3. Concatenation and Joining

### Concatenation:

```csharp
string[] strs = { "apple", "banana", "cherry" };
string outstr = String.Concat(strs);
Console.WriteLine(outstr);
```

### Joining:

```csharp
outstr = String.Join(".", strs);
Console.WriteLine(outstr);

outstr = String.Join("---", strs);
Console.WriteLine(outstr);
```

* `Concat`: combines strings directly.
* `Join`: combines strings with a separator.

---

## 4. Comparing Strings

### Compare method:

```csharp
int result = String.Compare(str2, "This is a string");
Console.WriteLine(result); // 0 (strings are equal)
```

* Returns:

  * `< 0`: first string comes before second.
  * `0`: both are equal.
  * `> 0`: first string comes after second.

### Equals method:

```csharp
bool isEqual = str2.Equals(str3);
Console.WriteLine(isEqual); // False (case-sensitive)
```

---

## 5. Searching in Strings

### IndexOf and LastIndexOf:

```csharp
Console.WriteLine(str1.IndexOf('e'));    // First index of 'e'
Console.WriteLine(str1.IndexOf("fox"));  // First index of "fox"

Console.WriteLine(str1.LastIndexOf('e'));   // Last index of 'e'
Console.WriteLine(str1.LastIndexOf("the")); // Last index of "the"
```

* `IndexOf`: returns the first occurrence.
* `LastIndexOf`: returns the last occurrence.
* Returns `-1` if not found.

---

## 6. Replacing Substrings

```csharp
string outstr = str1.Replace("fox", "cat");
Console.WriteLine(outstr);
Console.WriteLine(outstr.IndexOf("fox")); // -1 (no longer found)
```

* `Replace`: substitutes all occurrences of a substring.

---

## Summary

* Strings are objects with powerful methods.
* You can **measure, iterate, concatenate, join, compare, search, and replace** strings.
* The `String` class provides many additional methods beyond these basics.

👉 For more details, refer to the official [.NET String class documentation](https://learn.microsoft.com/en-us/dotnet/api/system.string).
