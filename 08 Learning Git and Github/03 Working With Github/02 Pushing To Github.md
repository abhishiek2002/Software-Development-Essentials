# Pushing to GitHub: Commands & Concepts

## 1. Introduction

Pushing your project to GitHub allows you to share it, collaborate, and back it up in the cloud. This process mainly involves **connecting your local repository to a remote** and then **pushing your code** to that remote.

In Git, a **remote** is simply a URL reference to a repository hosted elsewhere — often GitHub, but it could also be a company server or another hosting service.

---

## 2. Adding a Remote

The command to add a remote is:

```bash
git remote add <name> <url>
```

* `<name>` → The short name for your remote (commonly `origin`)
* `<url>` → The location where your repo will be hosted (GitHub URL ending in `.git`)

**Example:**

```bash
git remote add origin https://github.com/username/repo.git
```

### Why `origin`?

* It's the **default conventional name** for the main remote.
* Avoids remembering a long URL each time.

> You can add **multiple remotes** to push to different locations (e.g., a backup server + GitHub).

### Managing Remotes:

```bash
git remote remove <name>    # Remove a remote
git remote rename <old> <new>  # Rename a remote
git remote                   # List remotes
git remote -v                 # List remotes with full URLs (verbose)
```

---

## 3. Pushing to GitHub

The core command:

```bash
git push <remote> <branch>
```

This sends your **local commits** to the remote repository.

### First-Time Push

When pushing a branch for the first time, you need to set the **upstream link** so Git knows which remote branch to sync with:

```bash
git push -u origin main
```

* `-u` (short for `--set-upstream-to`) tells Git to remember this branch-to-remote connection for future pushes.

### Pushing All Branches

If you want to push **every local branch** to the remote:

```bash
git push --all
```

This is useful if you maintain multiple feature branches locally.

---

## 4. Handling Lost Branch Connections

Sometimes, Git loses the link between a local branch and its remote counterpart. In such cases, you can manually reconnect them:

```bash
git branch --set-upstream-to=origin/<branch-name>
```

Git will usually show the exact command you need in the error message.

---

## 5. Example Workflow

1. **Get the GitHub repo URL**

   * Found on the repository page (look for the HTTPS or SSH link ending in `.git`).
2. **Add the remote**

   ```bash
   git remote add origin https://github.com/username/repo.git
   ```
3. **Push your branches**

   ```bash
   git push --all
   ```

   or

   ```bash
   git push -u origin main
   ```

---

## 6. Viewing Branches on GitHub

After pushing:

* Go to your repository page.
* Use the **branches dropdown** to view all branches.
* You can:

  * Switch branches
  * Delete branches
  * Rename branches
  * Create pull requests (for merging changes)

---

## 7. Summary of Commands

```bash
# Add a remote
git remote add origin <url>

# List remotes
git remote -v

# Push main branch first time
git push -u origin main

# Push all branches
git push --all

# Set upstream manually
git branch --set-upstream-to=origin/<branch>

# Remove a remote
git remote remove origin
```

Pushing your first repository to GitHub can be exciting. Once you understand how **remotes**, **branches**, and **push commands** work, you'll be able to manage your code confidently in the cloud.
