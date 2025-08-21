# 🖥️ Setting Up Your Environment for C\#

Before you begin writing and running C# programs, you’ll need to set up the proper **.NET development environment** on your computer.

---

## 📥 Installing .NET

1. Go to [dotnet.microsoft.com](https://dotnet.microsoft.com) and click **Download**.

   * If the website looks different, simply search: **“.NET install”** in your browser.
   * It should appear as one of the top search results.

2. **Download the .NET SDK (not just the Runtime)**

   * **SDK** = Software Development Kit → allows you to **build and run apps**.
   * **Runtime** = only runs apps (cannot build them).

   ✅ You need the **.NET SDK**.

3. **Choose your OS:**

   * **Windows:** Download the latest **.NET SDK** (at least version **.NET 5.0** or higher).
   * **Linux:** Choose **.NET 5.0 SDK** or later.
   * **Mac:** Download **.NET SDK**.

4. **Alternative Option (Windows/Mac):**

   * Install the **full Visual Studio IDE** (commercial version).
   * It will also install the **runtime + SDK** automatically.

---

## 🧾 Version Notes

* **.NET Framework** → Legacy, Windows-only.
* **.NET Core** → Older cross-platform version.
* **.NET 5.0 and later** → Unified, modern, cross-platform (recommended).

> 💡 Always install at least **.NET 5.0 SDK** or newer.

---

## ⚡ Verify Installation

After installation:

1. Open a **terminal/command line** (works on Windows, Mac, or Linux).
2. Type:

   ```bash
   dotnet --version
   ```
3. If installed correctly → it will show a version number (e.g., `5.0.103`).

   * If you see an **error**, reinstall .NET.

---

## 🛠️ Choosing an Editor

* You do **not** need the full Visual Studio IDE.
* The instructor uses **Visual Studio Code (VS Code)**, a **free and lightweight editor**.
* Download it here → [Visual Studio Code](https://code.visualstudio.com)
* You can technically use **any editor** you like.

---

## ✅ Summary

To set up your environment:

1. Install **.NET SDK (5.0 or higher)** for your OS.
2. Verify installation with `dotnet --version`.
3. Install your preferred code editor (VS Code recommended).

Once you’ve completed these steps, you are fully ready to start coding in **C#** 🚀
