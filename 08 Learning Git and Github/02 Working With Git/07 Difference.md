# Viewing Differences in Git

## Overview

Git provides powerful tools to compare changes in your files. The `git diff` command shows what has been added or removed in your working directory compared to your staging area or a specific commit.

---

## Basic Usage of `git diff`

1. **Make a change** — For example, delete the last paragraph in a `README.md` file.

2. Save the file.

3. Run:

   ```bash
   git diff
   ```

   * Lines starting with a **minus (-)** are deletions.
   * Lines starting with a **plus (+)** are additions.
   * In this example, the output would show the removed paragraph and even a deleted carriage return.

4. **Undo the change** and save the file again.

5. Running `git diff` now shows no output, meaning no differences remain.

---

## Moving Files and `git diff`

* Create a folder called `docs` and move HTML files into it.
* Run:

  ```bash
  git diff
  ```

  Git shows these moves as **deletions** (old file paths) and **additions** (new file paths).
* This output can be long, requiring scrolling. In the terminal, if output is paused with a colon (`:`), press `q` to quit.

**Note:** Moving or renaming files is tracked as a delete+add unless Git detects it as a rename.

---

## Viewing Changes in VS Code

Instead of relying only on the terminal:

* Open the **Source Control** tab in Visual Studio Code.
* Deleted files are marked as removed; new/updated files are listed separately.
* You can click the **+** icon next to files to stage them directly in the interface.
* Stage all files, then commit the change.

---

## Comparing to Previous Commits

You can compare your current state to any commit:

1. View commit history:

   ```bash
   git log
   ```

   This can be long and scrollable.
2. Use the `--oneline` flag for a compact view:

   ```bash
   git log --oneline
   ```

   * Shows short commit hashes and messages.
   * Indicates the branch and HEAD pointer location.
3. Compare against a specific commit:

   ```bash
   git diff <commit-hash>
   ```

---

## Tip: GitLens Extension

If you do a lot of comparisons between branches or commits in VS Code, install the **GitLens** extension from the Marketplace for enhanced diff and history features.

---

## Best Practices

* Use `git diff` to preview changes before committing.
* Use `git log --oneline` for easier commit selection when comparing.
* For large changes or frequent comparisons, leverage GUI tools like VS Code's Source Control tab or **GitLens**.



# Command Used So Far

```bash
git diff
git log
git diff <hash>
git log --oneline
```