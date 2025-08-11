# Changing History in Git

Git allows you to rewrite and reorganize your project's commit history — essentially giving you a *time machine* for your codebase. This can be useful for cleaning up messy commits, moving changes to a different point in history, or even removing unwanted commits. However, changing history can be risky, especially on shared branches.

## 1. Amending Commits

Amending lets you modify the most recent commit instead of creating a new one.

**When to use:**

* You forgot to include changes in your last commit.
* You want to fix the last commit's message.

**Commands:**

```bash
# Amend with editor prompt
git commit --amend

# Amend and change commit message directly
git commit --amend -m "New commit message"

# Amend without changing the commit message
git commit --amend --no-edit
```

**Example:**

1. Commit changes to a file (`index.html`).
2. Realize the same change needs to be applied to other files.
3. Make the changes, then run:

   ```bash
   git commit --amend
   ```

   Modify the commit message if desired, save, and exit.
4. The commit history now shows the updated commit instead of creating a new one.

> **Tip:** Be careful with typos like `ammend` or `git log online` instead of `git log --oneline`.

---

## 2. Resetting Commits

`git reset` moves the branch pointer to a previous commit.

**Modes:**

* **Soft reset** *(default)*: Keeps file changes in your working directory and staging area.
* **Hard reset**: Discards all changes after the specified commit (dangerous).

**Commands:**

```bash
# Soft reset to a specific commit
git reset <commit-hash>

# Hard reset to a specific commit
git reset --hard <commit-hash>
```

**Example:**

1. Run:

   ```bash
   git log --oneline
   git reset <commit-hash>
   ```
2. Your commit history rewinds to the chosen commit.
3. Soft reset: Files are still modified and can be recommitted.
4. Hard reset: Files and commits are permanently removed.

> **Recommendation:** Prefer soft reset for safety unless you *need* to fully discard changes.

---

## 3. Rebasing Commits

Rebasing moves or combines commits to rewrite history.

**Use cases:**

* Reordering commits.
* Combining multiple commits into one.
* Cleaning up messy history before merging.

**Basic Command:**

```bash
git rebase <branch-or-commit>
```

**Interactive Mode:**

```bash
git rebase -i HEAD~<n>
# or
git rebase -i --root  # include all commits
```

### Example: Reordering & Squashing Commits

1. Suppose you update the `LICENSE` file but want that change to appear in your first commit.
2. Run:

   ```bash
   git rebase -i --root
   ```
3. In the interactive editor:

   * Move the `update LICENSE` commit to the desired position.
   * Use `squash` (or `s`) to combine commits while keeping both commit messages.
   * Use `fixup` (or `f`) to combine commits and discard the later commit message.
4. Save and close the editor.
5. The change is now part of the earlier commit.

---

## Summary Table

| Command              | Purpose                    | Safe on Shared Branches? |
| -------------------- | -------------------------- | ------------------------ |
| `git commit --amend` | Edit last commit           | No                       |
| `git reset`          | Rewind commits (soft/hard) | No                       |
| `git rebase`         | Rewrite/reorder commits    | No                       |

> **Important:** Avoid rewriting history on public/shared branches. For local or feature branches, it can be a powerful way to keep your history clean.
