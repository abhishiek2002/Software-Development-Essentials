# Learning Markdown

Markdown is a **lightweight markup language** that developers and writers often use to format text. You’ll frequently see it in **GitHub repositories**—especially in `README.md` files.

It’s designed to be **easy to write and read as plain text**, while also rendering nicely as formatted HTML.

---

## **Getting Started**

You can edit Markdown directly in GitHub:

1. Open a repository.
2. Navigate to the `README.md` file (or create a new `.md` file).
3. Click **Edit**.
4. Use the **Preview** button to see how it will render.

---

## **Headings**

Markdown headings correspond to HTML heading tags `<h1>` through `<h6>`.

**Syntax:**

```md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
```

**Alternate Syntax for H1 & H2:**

```md
Heading 1
=========

Heading 2
---------
```

* The `#` symbol creates headings.
* The more `#` symbols, the smaller the heading level.
* Equal signs (`=`) create H1, and hyphens (`-`) create H2.

---

## **Text Formatting**

| Style             | Syntax                   | Example Rendered |
| ----------------- | ------------------------ | ---------------- |
| **Bold**          | `**text**` or `__text__` | **text**         |
| *Italic*          | `*text*` or `_text_`     | *text*           |
| ~~Strikethrough~~ | `~~text~~`               | ~~text~~         |
| Blockquote        | `> text`                 | > text           |

**Horizontal Rule:**

```md
---
***
___
```

---

## **Lists**

**Unordered Lists:**

```md
- Item 1
- Item 2
  - Subitem 2.1
* Item 3
+ Item 4
```

**Ordered Lists:**

```md
1. First item
2. Second item
3. Third item
```

> Numbers don’t have to be in sequence—Markdown will auto-number.

**Nested Lists:**

```md
1. Main item
   1. Sub item
   2. Another sub item
```

---

## **Links**

**Automatic Links:**

```md
https://github.com
```

**Inline Links:**

```md
[GitHub](https://github.com)
[GitHub](https://github.com "GitHub Homepage")
```

**Reference Links:**

```md
[GitHub][1]

[1]: https://github.com
```

---

## **Images**

**Inline Image:**

```md
![Alt Text](https://example.com/image.png)
```

**Reference Image:**

```md
![Alt Text][image-ref]

[image-ref]: https://example.com/image.png
```

**Image Link:**

```md
[![Alt Text](https://example.com/image.png)](https://example.com)
```

---

## **Code**

**Inline Code:**

```md
`console.log("Hello World");`
```

**Code Block:**

<pre>
```javascript
let x = 5;
console.log(x);
```
</pre>

* Triple backticks (` ``` `) create multi-line code blocks.
* Specify the language after the opening backticks for syntax highlighting.
* GitHub adds a **copy button** for code blocks automatically.

---

## **Quick Reference Table**

| Feature       | Syntax Example                               |
| ------------- | -------------------------------------------- |
| Heading 1     | `# Heading 1`                                |
| Bold          | `**bold**`                                   |
| Italic        | `*italic*`                                   |
| Strikethrough | `~~strike~~`                                 |
| Quote         | `> quoted text`                              |
| Link          | `[title](https://example.com)`               |
| Image         | `![alt](url)`                                |
| List          | `- item` or `1. item`                        |
| Code          | `` `inline` `` or triple backticks for block |

---

## **Example README.md Snippet**

````md
# Project Title

A short description of your project.

## Features
- Feature 1
- Feature 2
- Feature 3

## Installation
```bash
git clone https://github.com/user/repo.git
cd repo
npm install
````

## Usage

```javascript
import myLibrary from 'myLibrary';
myLibrary.doSomething();
```

```

---

By mastering **Markdown**, you can create clean, structured, and easy-to-read documentation for any project.

```
