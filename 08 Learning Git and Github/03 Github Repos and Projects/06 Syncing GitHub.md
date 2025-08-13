# Syncing GitHub with Local Repositories

## Overview

Synchronizing your local environment with a GitHub repository ensures you are working with the most up-to-date code. The three primary commands for this are **git clone**, **git fetch**, and **git pull**.

---

## 1. Cloning a Repository

**Command:**

```bash
git clone <repository-url>
```

* Creates a local copy of a GitHub repository.
* Steps:

  1. Copy the repository’s URL from the **Code** button on GitHub.
  2. Run `git clone <URL>` in your terminal.
  3. The repository is downloaded to your local machine.
* Notes:

  * Safe to have multiple clones.
  * The clone is the latest version from GitHub at that moment.

---

## 2. Fetching Updates

**Command:**

```bash
git fetch
```

* Downloads changes from the remote repository **without** merging them.
* Useful for viewing new branches or commits before applying them locally.
* Example:

  * Fetching reveals new remote branches (e.g., `origin/titlechange`).
  * Local branches are listed with `git branch`.
  * All branches (local + remote) are listed with `git branch -a`.

---

## 3. Pulling Updates

**Command:**

```bash
git pull
```

* Combines `git fetch` + merge.
* Brings remote changes directly into the current branch.
* If the branch is not linked to a remote branch, set the upstream first:

```bash
git branch --set-upstream-to=origin/main main
```

---

## 4. Working with Branches from Remote

* View local branches: `git branch`
* View all branches: `git branch -a`
* Check out a remote branch:

```bash
git checkout -b <branch-name> origin/<branch-name>
```

* In Visual Studio Code, you can click the branch name and select a remote branch to check out.

---

## 5. Creating and Merging Branches

* Create a new branch:

```bash
git switch -c othertitlechanges
```

* Make edits, stage, and commit:

```bash
git add .
git commit -m "Your message"
```

* Merge into main:

```bash
git checkout main
git merge othertitlechanges
```

---

## 6. Pushing Changes to GitHub

* Push current branch:

```bash
git push
```

* Push all branches:

```bash
git push --all
```

* After pushing, branches appear on GitHub.

---

## 7. Collaborating via Issues

* Mention teammates in issue comments with `@username`.
* Close issues with context by adding a comment.
* Use **Projects** to track issue status.
* Archive completed items to keep boards clean.

---

## 8. Creating GitHub Releases

* **Purpose:** Provide downloadable, specific versions of your code.
* **Steps:**

  1. Enable the **Releases** feature in repository settings (if hidden).
  2. Go to **Releases → Create a new release**.
  3. Assign a tag (e.g., `v1.0.0` using semantic versioning).
  4. Add a title and optional notes.
  5. Publish the release.
* **Semantic Versioning Guide:**

  * `MAJOR.MINOR.PATCH`

    * **MAJOR:** Breaking changes.
    * **MINOR:** Backwards-compatible features.
    * **PATCH:** Backwards-compatible bug fixes.
* Releases create a branch-like tag for reference.

---

## Key Takeaways

* **Clone** to get a full local copy.
* **Fetch** to see what’s new without changing local code.
* **Pull** to update local code with remote changes.
* Use branches to manage features and fixes.
* Issues, Projects, and Releases enhance collaboration and version control.
