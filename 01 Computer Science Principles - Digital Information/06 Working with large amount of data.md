# 🧠 Understanding File Sizes, Compression, and Image Encoding

This document breaks down the transcript into detailed, digestible sections with helpful formatting, analogies, and insights to help you **remember every key point**—without skipping a beat.

---

## 🧮 File Sizes and Bytes

Think of **data like distance**: we measure it in standardized units. Inches, feet, meters — and in computing, **bits and bytes**.

### 📏 The Basics:

* **1 bit** = the smallest unit of data (a `1` or a `0`).
* **1 byte** = 8 bits (e.g. `01001010`).
* **1 nibble** = 4 bits (half a byte).
* The **byte** is the base unit of measurement — like the meter in metric.

### ⚙️ Binary vs Decimal:

* Most real-world measurements use **base-10 (decimal)**.
* Computers use **base-2 (binary)**.
* So while **"kilo"** means 1,000 in decimal, it means **1,024** in binary.

### 📐 Units of Measurement:

| Unit     | Abbreviation | Size        | Real-world analogy                 |
| -------- | ------------ | ----------- | ---------------------------------- |
| Bit      | b            | 1 or 0      | Light switch: on/off               |
| Byte     | B            | 8 bits      | A single character in ASCII        |
| Kilobyte | KB           | 1,024 bytes | \~2–3 paragraphs of text           |
| Megabyte | MB           | 1,024 KB    | \~4 books with a few hundred pages |
| Gigabyte | GB           | 1,024 MB    | \~4,000 books                      |
| Terabyte | TB           | 1,024 GB    | \~4.6 million books                |
| Petabyte | PB           | 1,024 TB    | \~4.6 **billion** books!           |

> Fun Fact: **"Kibibyte (KiB)"** is the more accurate term for 1,024 bytes, but "kilobyte" is often used informally.

### ⚠️ Bit vs Byte

* **b** = bit (lowercase)
* **B** = Byte (uppercase)
* Very important! 8 bits = 1 byte. So 1 **Gbps** (gigabit per second) = **125 MBps** (megabytes per second).

### 📡 Bandwidth:

* The rate at which data is transmitted.
* Measured in **bits per second** (bps).
* Example: Ethernet = **1 Gbps** = 125 MBps (bytes per second).

---

## 🗜️ Text Compression

### 💡 Why Compress?

* Data is getting bigger—text, images, video.
* Compression lets us **store or transmit** that data more efficiently.

### 🧰 How It Works:

* Computers don’t care about **meaning**, just **characters**.
* Look for **common patterns** of characters or phrases.
* Replace them with **shorter representations** (like a code or symbol).

### 🧠 Compression Strategy:

1. Count how many times each character or pattern appears.
2. Create a **dictionary** of frequently used patterns.
3. Replace long patterns with short codes.
4. Repeat the process multiple times for better compression.

> The more text you have, the **more savings** you get. A few kilobytes may not seem much, but multiply that across thousands of documents... 📉 massive reductions.

### 🔁 Decoding:

* The **compression algorithm** and its **dictionary** act like a key.
* When decompressing, the key is used to restore the original text.

---

## 🖼️ Encoding Images

### 🧱 Bitmap Images (Pixels):

* Images are split into **tiny squares called pixels**.
* Each pixel stores **RGB** values:

  * **Red**, **Green**, **Blue** → mixed to create all colors.

### 🧮 RGB Breakdown:

* Each color value (R, G, B) = **1 byte** (2-digit hex value).
* **3 bytes per pixel** (1 for R, 1 for G, 1 for B).

### 📷 Storage Example:

| Resolution     | Pixels        | Bytes        | Megabytes |
| -------------- | ------------- | ------------ | --------- |
| 1920×1080      | 2,073,600     | 6,220,800    | \~5.9 MB  |
| 4K (3840×2160) | \~8.2 million | \~24,000,000 | \~23 MB   |

> Images also store **metadata**: camera info, date, software used, etc.

### 🎥 What About Video?

* 1 minute of HD video at 30 fps = **1,800 frames**.
* Each frame = full image.
* Total: \~**10.42 GB** for one minute of HD video.
* 4K? → \~**41 GB/minute** 🔥

### ✏️ Vector Images (Points):

* Instead of storing pixels, store **coordinates of shapes**.
* Pros:

  * File is **much smaller**.
  * Can be **resized without distortion**.
* Cons:

  * Not suitable for **photographs**.

### 🖼️ Formats:

| Type   | Examples       | Uses                        |
| ------ | -------------- | --------------------------- |
| Bitmap | JPEG, PNG, GIF | Photos, screenshots         |
| Vector | SVG            | Icons, logos, illustrations |

---

## 🖼️ Image Compression and File Formats

### 🌈 Color Simplification:

* Human eyes can’t see subtle differences between many colors.
* Compression algorithms use this to reduce file size **without noticeable quality loss**.

### 🔄 GIF Format:

* Pronounced **“gif” or “jif”** — your choice 😄
* Limited to **256 colors**
* Uses:

  1. A **standard palette**
  2. A **custom palette** from most-used colors
* Compression method: **LZW** (Lossless)

### 📉 JPEG Format:

* Supports **adjustable compression levels**
* **Lossy** compression:

  * Smaller files = lower detail
  * Cannot fully restore original image

### 💎 PNG Format:

* **Lossless**
* Supports:

  * 24-bit RGB
  * 32-bit with transparency (alpha channel)
* Ideal for web images needing transparency.

### 🖨️ Print vs Screen:

* **Screens** use light: RGB
* **Print** uses pigment: **CMYK** (Cyan, Magenta, Yellow, Black)

### 📸 RAW Image Formats:

* Used in photography
* Store **sensor data** rather than pixel data
* Need processing software to develop into an image
* Store:

  * Light intensity
  * Color range
  * Dynamic range

---

## 🧠 Final Takeaways

✅ Data size grows FAST — understanding bits/bytes is critical.

✅ Compression lets us save space and transmit faster.

✅ Images can be stored as:

* Pixels (bitmap)
* Coordinates (vector)

✅ Formats matter — choose wisely:

* GIF = limited colors, animation
* JPEG = lossy but flexible
* PNG = sharp, transparent
* SVG = scalable icons

✅ Video = massive storage requirements — every second counts!

---

> **TIP**: Pay attention to **b** (bits) vs **B** (bytes) when measuring speeds and storage. It's a common source of confusion.

---

Let me know if you’d like:

* Flashcards or a quiz on this topic
* A downloadable PDF version
* A visual infographic of the storage units and compression
* Side-by-side examples of compressed images
