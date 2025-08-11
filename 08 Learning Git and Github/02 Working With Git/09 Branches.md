# Working with Branches in Git

Branches in Git allow you to create separate versions of your codebase to work on new features or fixes without affecting the stable version. This makes experimenting safer and collaboration easier.

---

## Viewing Branches

To see all branches in your repository:

```bash
git branch
```

The current branch is marked with an asterisk (`*`).

---

## Creating a Branch

Two main ways to create and switch to a new branch:

```bash
# Modern way
git switch -c <branch-name>

# Older way
git checkout -b <branch-name>
```

Both commands copy the current branch's history into the new branch.

**Example:**

```bash
git switch -c fix-classes
```

---

## Making Changes in a Branch

In this example, extra CSS classes (`site-header`, `site-nav`, `family-sans`) were removed using Visual Studio Code's "Replace in Files" feature. After making changes, stage and commit them:

```bash
git add .
git commit -m "Remove unused CSS classes"
```

You can verify the branch contains the new commit:

```bash
git log --oneline
```

Main will still be unchanged until you merge.

---

## Merging Branches

To bring changes from another branch into your current branch:

1. Switch to the branch you want to update (e.g., `main`):

   ```bash
   git switch main
   ```
2. Merge the feature branch:

   ```bash
   git merge fix-classes
   ```

Now `main` contains the changes from `fix-classes`.

---

## Deleting Branches

After merging, delete the branch if it's no longer needed:

```bash
git branch -d fix-classes   # Safe delete (no conflicts)
git branch -D fix-classes   # Force delete
```

---

## Git Flow Basics

A common workflow:

1. Create a new branch for each feature or fix.
2. Make changes and commit them on that branch.
3. Merge the branch back into `main` (or `master`).
4. Delete the branch.

**Why it matters:** In team projects, everyone works on separate branches to avoid conflicts on `main`, making collaboration smoother.
