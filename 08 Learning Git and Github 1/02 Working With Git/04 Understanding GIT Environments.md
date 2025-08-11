# Understanding Git Environments

After creating your first commit, it’s important to understand **how Git organizes and manages your files**.

---

## 1. Git Log Basics

When you run:

```bash
git log
```

you’ll see details for each commit:

* **Commit hash** – a unique ID for that commit.
* **HEAD pointer** – shows which branch you’re currently on (e.g., `main`).
* **Author** – name and email (from `git config` settings).
* **Date** – when the commit was made.
* **Commit message** – the note you added when committing.

---

## 2. Branches & HEAD

* A **branch** is like an alternate reality for your project.
* `HEAD` points to your current branch.
* By default:

  * Modern Git uses `main`.
  * Older Git versions used `master`.

---

## 3. Git’s Three Environments

Git works with three main areas:

1. **Working directory** – your local files.
2. **Staging area** – where changes are queued before committing (use `git add` to move files here).
3. **Repository (commit)** – the permanent history stored inside `.git`.

Think of staging like a “preview area” where you prepare changes before making them official.

---

## 4. File States

Before committing, files can be in different states:

* **Tracked files** – existed in the last commit.

  * **Unmodified** – no changes since last commit.
  * **Modified** – changes made but not staged.
  * **Staged** – changes added to staging.
* **Untracked files** – new files Git isn’t tracking yet.

---

## 5. Useful Commands

### Check file status

```bash
git status
```

* Shows which files are modified, staged, or untracked.

### Stage changes

```bash
git add filename
# or stage everything in the current directory
git add .
```

### Unstage changes

```bash
git restore --staged filename
# shortcut
git restore -S filename
```

### Discard changes in working directory

```bash
git restore filename
# or discard all changes
git restore .
```

*(Older command still in use: `git checkout .`)*

### Remove untracked files

* Git’s `restore` doesn’t affect untracked files — delete them manually.

---

**Key takeaway:** Understanding how Git’s environments (working directory, staging area, and repository) and file states (tracked, untracked, modified, staged) work will help you manage changes confidently as your project grows.



# Commands Used So Far

```bash
git status
git add <file>
git commit
git restore --staged <file>
```