# Deleting and Renaming Files in Git

## Overview

When working with Git, you’ll sometimes need to delete, move, or rename files. While these actions are straightforward in your operating system, Git tracks them in specific ways, which can be confusing until you understand how it works.

---

## Deleting Files

### Method 1: Delete from the File System

* Delete the file directly from your editor (e.g., right-click → delete in VS Code) or your OS file manager.
* Run `git status` — Git shows the deletion as an unstaged change.
* Stage and commit it:

  ```bash
  git add <file>
  git commit -m "Delete file"
  ```
* To undo the deletion before committing:

  ```bash
  git restore .
  ```

### Method 2: Delete with `git rm`

* Run:

  ```bash
  git rm <file>
  ```
* This removes the file and **automatically stages** the deletion.
* Undo staged deletion:

  ```bash
  git restore --staged .
  git restore .
  ```

---

## Renaming Files

### Method 1: Rename in the OS or Editor

* Change the file name normally (e.g., rename in VS Code or your file manager).
* If you run `git status` after this, Git will usually show it as **a deletion of the old file** and **an addition of a new file**.

**Transcript example — undoing a rename (step-by-step):**

1. Rename `index.html` to `home.html` in your editor.

```bash
# Check status after the rename
git status
# Output shows something like:
#   deleted:    index.html
#   new file:   home.html
```

2. To undo the rename **before committing**, restore the deleted file and remove the new one:

```bash
# Restore deleted files from last commit into the working directory
git restore .
# Remove the accidentally created file
rm home.html
# Or delete it from your editor/OS instead of rm

git status
# Now the repo should look like it did before the rename
```

* After restoring the deleted file and deleting the newly created file, `git status` will show nothing to commit.

### Method 2: Rename with `git mv`

* Use Git’s move command which stages the rename automatically:

```bash
git mv index.html home.html
```

* This both renames the file in the working directory **and** stages the change, saving you an extra `git add` step.

* To undo a `git mv` **before committing**, simply move it back:

```bash
git mv home.html index.html
```

* If you rename a file back to its original name (so the working tree matches the last commit), `git status` will report **nothing to commit** because there is no net change compared to the last recorded snapshot.

---

## Why `mv`?

In Linux, `mv` is the command to move files, and renaming is considered moving a file to a new name. Git follows this convention.

---

## Best Practices

* Use `git mv` for renames to avoid extra staging steps.
* Use `git rm` for deletions when you want them staged immediately.
* Run `git status` frequently to understand what Git thinks has changed.
* Practice these commands to avoid confusion — especially when undoing changes.
