# ▶️ How to Run the Examples

Now that you’ve installed and tested the **.NET SDK**, let’s go through the steps to run the examples provided in this course.

---

## 📂 Course Example Files

The example files are organized into folders:

* **Finished** → contains completed examples for each chapter.
* **Start** → contains starter files if you want to code along.
* Each **chapter** has its own subfolder.

Example path:

```
Desktop → Exercise Files → Finished → Overview → HelloWorld
```

Inside the `HelloWorld` folder you’ll see:

* `HelloWorld.csproj` → project file
* `Program.cs` → main code file

---

## 🖥️ Running Examples via Terminal

1. Open your **terminal/command prompt**:

   * Windows → Command Prompt / PowerShell
   * Mac/Linux → Terminal

2. Navigate into the folder of the example you want to run (e.g., HelloWorld).

   ```bash
   cd Desktop/ExerciseFiles/Finished/Overview/HelloWorld
   ```

3. Run the program with:

   ```bash
   dotnet run
   ```

4. The program will **compile and execute**:

   ```text
   Hello World, what is your name?
   Joe
   Hello Joe!
   ```

> 💡 Note: The first time you run, it may take a few seconds since .NET needs to compile the program.

---

## 🛠️ Running Examples in VS Code

Visual Studio Code makes running examples even easier:

1. Open **VS Code**.
2. Select **File → Open Folder** and choose the `Exercise Files` folder.
3. Navigate to the example you want to run (e.g., Finished → Overview → HelloWorld).
4. Right-click on the folder and select **Open in Integrated Terminal**.

   * This opens the terminal directly in the correct folder (no need to manually `cd`).
5. Type:

   ```bash
   dotnet run
   ```
6. The program runs inside VS Code’s built-in terminal.

---

## ✅ Summary

You can run examples in **two ways**:

* **Command Line (Terminal/Command Prompt)** → Navigate into the folder and run `dotnet run`.
* **VS Code Integrated Terminal** → Open the example folder in VS Code and run `dotnet run` directly.

Both methods work the same way – choose whichever is more convenient for you 🎯
