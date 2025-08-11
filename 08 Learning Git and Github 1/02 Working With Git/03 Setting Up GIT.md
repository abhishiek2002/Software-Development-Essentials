# ⚙️ Setting Up Git

Git needs some initial setup before you can start tracking a project. This includes configuring your identity, initializing a repository, and making your first commit.

---

## 1️⃣ Configure Your Identity

Git is multi-user by design, so you must tell it **who you are** for commit attribution.

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

* Use your **GitHub email** if you want commits to be linked to your GitHub profile.
* `--global` applies the config to **all projects** on your computer.

---

## 2️⃣ Prepare the Project Folder

1. Open your folder in **Visual Studio Code** (or another editor).
2. Open a terminal (VS Code has a built-in terminal under `Terminal > New Terminal`).
3. Run:

   ```bash
   git init
   ```

   * Creates a hidden `.git` folder containing all Git’s tracking data.
   * Your editor may show color changes indicating Git is active.

---

## 3️⃣ Inspect the `.git` Folder (Optional)

* On Linux/macOS: `ls -la` to see hidden files.
* `.git` stores all commit history, configuration, and tracking info.
* To look inside: `cd .git && ls -la` (then `cd ..` to go back).

---

## 4️⃣ Stage Files for Commit

Staging = preparing files for the next commit.

**Common commands:**

```bash
git add filename.txt       # Add a specific file
git add --all              # Add all files
git add -A                 # Shortcut for --all
git add .                  # Add everything in current directory
```

* `.` is the most common shortcut.

---

## 5️⃣ Commit Changes

Commits = permanent checkpoints in project history.

```bash
git commit -m "First commit"
```

* `-m` lets you add a message describing your changes.
* Good messages help future you remember why a change was made.

---

## 6️⃣ View Commit History

```bash
git log
```

* Shows commit IDs, authors, dates, and messages.
* Confirms that Git is tracking your work.

---

✅ **You’ve just made your first commit!** This is the foundation of version control — from here, you can branch, merge, and collaborate.



# Command Uses So Far

```bash
git add .
git commit -m "First commit of learning git and github"
git log
```