# Handling Merge Conflicts in Git

Merge conflicts happen when changes in two branches affect the same part of a file in different ways. Git can't automatically decide which change to keep, so you have to resolve them manually.

---

## How Merge Conflicts Arise

Example scenario:

1. The `main` branch has a commit.
2. Another user creates a feature branch, makes a fix, and merges it into `main`.
3. You create your own feature branch from the earlier version of `main`, make changes, and try to merge back.
4. If both branches changed the same lines, Git will flag a merge conflict.

---

## Example: Conflict in `index.html`

* **Current state:** The homepage headline (`<h3>`) is smaller than headlines on other pages (`<h2 class="display-4">`).
* **Goal:** Make them consistent by adding the `display-4` class in `index.html`.

**Steps:**

```bash
git switch -c fixheadline
# Edit index.html to add class="display-4" to the headline
git add .
git commit -m "Add display-4 to homepage headline"
```

Then, in `main`, another change is made to remove a non-Bootstrap `text-reverse` class:

```bash
git switch main
# Remove text-reverse class in index.html
git add .
git commit -m "Remove text-reverse class"
```

Now, merging `fixheadline` into `main` causes a conflict because the same headline line was changed differently.

---

## Resolving the Conflict in VS Code

When you run:

```bash
git merge fixheadline
```

You’ll see conflict markers:

```
<<<<<<< HEAD
<h3>Headline without classes</h3>
=======
<h3 class="display-4 text-reverse">Headline</h3>
>>>>>>> fixheadline
```

* **HEAD** = current branch (`main`)
* **Incoming change** = from `fixheadline`

**Resolution:**

1. Accept the incoming change to keep `display-4`.
2. Manually remove the `text-reverse` class.
3. Clean up conflict markers.

Stage and commit:

```bash
git add .
git commit -m "Resolve merge conflict: keep display-4, remove text-reverse"
```

---

## Key Tips for Conflicts

* Choose one version, combine them, or rewrite entirely.
* Conflict markers always appear between `<<<<<<<` and `>>>>>>>`.
* Test after resolving.

**Remember:** Merge conflicts are normal in collaboration. Understanding how to resolve them keeps your workflow smooth.
