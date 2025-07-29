**ASCII and Unicode**

Computers use binary to represent not just numbers but also different types of data—like text. Here's how text is encoded and formatted for computers to process and transmit effectively.

---

### 🔤 Encoding Text with Numbers: Decoder Rings and Protocols

* A **decoder ring** analogy helps understand how each letter in a phrase can be assigned a unique symbol or number.
* **Encoding**: Converting text into unique codes using a consistent method.
* **Decoding**: Reversing the encoding back to readable text.
* For this to work, both sender and receiver must use the same encoding system, or **protocol**.

---

### 🧮 ASCII (American Standard Code for Information Interchange)

* Developed in the 1960s.
* Each character is assigned a unique number from 0 to 255.
* Uses **one byte (8 bits)** to represent each character.
* Includes:

  * Uppercase & lowercase alphabets
  * Numbers
  * Punctuation
  * Special characters and control characters like newline or backspace
* Limited to 256 characters; not suitable for global languages or symbols.

---

### 🌐 Unicode: A Modern Standard

* Created to handle **thousands of characters** from all global languages and ancient symbols.
* Unicode uses **multiple bytes** to represent a single character.
* Common characters use fewer bits (for efficiency), rare ones use more.

#### UTF-8 (Unicode Transformation Format - 8-bit)

* Most common encoding format used today (especially on the web).
* **Backwards compatible** with ASCII.
* Each character is represented by a `U` prefix and a **4-digit hexadecimal code**.

  * Example: `U+0044` for capital `D`
* 2 bytes (16 bits) = 65,536 symbols (**Plane 0**)
* Unicode has **17 planes** (0 to 16), totaling **1,114,112 code points**

---

### 📝 Encoding Formatted Text

Text isn’t just plain words—it includes **formatting** like bold, italic, underline, color, etc.

#### 🕹️ Early Formatting:

* Used **control characters** (e.g., Ctrl + letter) to start/stop formatting.
* Specific key sequences were interpreted by programs to denote formatting.

#### 🌐 Modern Formatting with Markup:

* Today, we use **markup languages** like **HTML**.
* Markup includes **tags** to structure and style content.

  * Example: `<b>` to begin bold, `</b>` to end bold.
* Tags are enclosed in **angle brackets**.
* HTML gives documents **structure and meaning**, enabling web browsers to render them appropriately.

All characters in these tags are encoded as **UTF-8**, which means they also follow Unicode rules—making the entire document storable, transmittable, and readable as binary.

---

### ✅ Summary

* **ASCII**: 1-byte encoding, limited to 256 characters.
* **Unicode/UTF-8**: Multi-byte encoding, supports over a million symbols.
* **HTML**: Modern method to structure and format text using tags.
* **Binary** is at the core of storing and processing all text.

Encoding systems like ASCII and Unicode are the backbone of digital communication, ensuring that text from any language or symbol set can be stored, shared, and rendered globally.


**Formatted Text Encoding**

Formatting adds layers of meaning to plain text—such as bold, italic, underlining, or structure (like headings, links, etc.). Let’s look at how formatted text is encoded and understood by computers.

---

### 🧑‍💻 Why Format Text?

* Enhance readability and structure.
* Communicate emphasis, hierarchy, and interactivity.
* Essential in documents, websites, and UI interfaces.

---

### 🕹️ Early Days: Control Characters

* Early text systems used **control characters** (e.g., Ctrl + B) to start or stop formatting.
* These weren’t visible on-screen but altered how text was rendered.
* Examples:

  * `Ctrl+I`: Start italic
  * `Ctrl+U`: Start underline

Limitations:

* Not standardized across systems
* Difficult to interpret and render consistently

---

### 🌐 HTML: The Web’s Markup Language

* HTML (HyperText Markup Language) is the dominant way to structure and format text.
* Uses **tags** enclosed in angle brackets `<>`.
* Tags define **semantic meaning** and **visual styling**.

#### 📄 Common HTML Tags for Formatting

* `<b>` or `<strong>`: Bold
* `<i>` or `<em>`: Italic
* `<u>`: Underline
* `<h1>` to `<h6>`: Headings
* `<p>`: Paragraph
* `<a href="...">`: Hyperlink
* `<div>`, `<span>`: Containers for styling or layout

#### Example:

```html
<p>This is a <strong>bold</strong> and <em>italic</em> sentence.</p>
```

---

### 🔡 Encoding Tags with Unicode

* All characters—including tag symbols like `<`, `>`, `/`, and attribute quotes—are encoded using **Unicode (UTF-8)**.
* This ensures global compatibility and consistency.
* HTML is essentially a **text file**, fully representable as binary using encoding schemes.

---

### 🧵 How Formatting Works in Practice

1. User writes a formatted document (HTML, Markdown, etc.).
2. File is saved in **UTF-8** format.
3. A browser or interpreter reads the text, parses the tags, and renders the formatted output.
4. Any characters inside and outside the tags are treated as Unicode symbols.

---

### 🧠 Summary

* **Formatted text** uses markup (like HTML) to apply visual and semantic meaning.
* Modern formats are built on **Unicode encoding**.
* Formatting tags are text-based and encoded just like regular characters.
* The combination of markup + encoding enables global, rich-text communication.

Understanding both markup and encoding is key to how modern digital text is stored, displayed, and transmitted on the internet.
