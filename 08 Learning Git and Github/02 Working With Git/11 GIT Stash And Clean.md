# Git Stash and Git Clean

Some Git commands aren’t part of the core GitHub workflow but are extremely useful in day-to-day development. Two such commands are `git stash` and `git clean`.

---

## Git Stash

`git stash` lets you temporarily store (or “stash”) your changes so you can work on something else without committing them.

### When to Use

Example: You’re in the middle of a change when your boss asks for an urgent fix. You can stash your current work, make the fix, and then reapply your stashed changes later.

### Basic Commands

```bash
git stash           # Save changes and return to a clean working directory
git stash list      # View all stashes
git stash apply 0   # Apply stash at index 0, keep it in the list
git stash pop       # Apply the latest stash and remove it from the list
```

* Stashes are stored like a deck of cards (index 0 is the most recent).
* You can have multiple stashes.

### Example Workflow

1. Change all `bg-dark` classes to `bg-primary` in multiple files.
2. Run `git stash` to save changes and revert to the original state.
3. Check stashes with `git stash list`.
4. Use `git stash apply 0` to bring changes back without removing them.
5. Repeat with other colors (`bg-danger`, `bg-info`) and stash each set.
6. Use `git stash pop` to apply and remove the top stash.

---

## Git Clean

`git clean` removes untracked files and directories from your working directory. This is useful when you need a perfectly clean state.

### Safe Usage

Always do a dry run first:

```bash
git clean -n       # Show what would be removed
git clean -nd      # Include directories in the dry run
```

### Removing Files and Folders

```bash
git clean -f       # Remove untracked files
git clean -fd      # Remove untracked files and directories
git clean -df      # Equivalent to -fd
```

### Example

1. Create an untracked file and folder.
2. Run `git clean -n` — lists only the file.
3. Run `git clean -nd` — lists both file and folder.
4. Run `git clean -df` — deletes both permanently.

**Warning:** `git clean` is irreversible, so always run with `-n` before `-f`.

---

## Key Takeaways

* **`git stash`**: Temporarily saves your work without committing.
* **`git clean`**: Removes untracked files/folders for a clean workspace.
* Always dry-run `git clean` to avoid losing important files.
