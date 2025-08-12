# Understanding GitHub Flow

GitHub Flow (sometimes referred to as **GitFlow**) is a **branch-based workflow** that is popular when using Git in combination with GitHub. It ensures a clean, collaborative, and traceable development process.

---

## **Core Idea of GitHub Flow**

* The **`main` branch** always contains the **stable and deployable** version of the project.
* You **never modify the `main` branch directly**.
* All changes are made through **feature branches**.
* Changes from feature branches are merged into `main` **only after review** via **Pull Requests**.

---

## **Step-by-Step Process**

### 1. **Starting a New Feature**

* Begin by creating a **feature branch** from `main`.
* A feature branch is an isolated copy of the project for working on a specific task.
* This allows multiple developers to work independently without interfering with each other’s code.

```bash
# Example: Creating a feature branch
git checkout -b feature/update-heading main
```

**Why?**
This separation makes it easy to track progress, experiment safely, and avoid breaking the stable version.

---

### 2. **Making Changes**

* Pull the feature branch into your working environment.
* Make your changes in **small, isolated commits**.
* **Best practice:** Each commit should represent one complete, meaningful change.

```bash
git add file.txt
git commit -m "Added exclamation mark to README heading"
```

**Why small commits?**
They make reviewing code easier and help in debugging if something goes wrong.

---

### 3. **Pushing Changes to GitHub**

* After committing changes locally, push them to the **feature branch** on GitHub.

```bash
git push origin feature/update-heading
```

---

### 4. **Creating a Pull Request (PR)**

A Pull Request is **a request to merge your changes** from the feature branch into `main`.

When creating a PR:

* Explain **what** you changed.
* Explain **why** you made these changes.
* Optionally, **tag** people (`@username`) to request a review.

**On GitHub UI:**

1. Click **"Compare & pull request"**.
2. Verify that **`base`** is `main` and **`compare`** is your feature branch.
3. Add title & description.
4. Assign reviewers, add labels if needed.

---

### 5. **Code Review & Feedback**

* Reviewers can:

  * Leave comments.
  * Suggest changes (even inline in the code).
  * Approve the request.
* Discussions happen directly inside the PR.

**Example:**

```md
@TerryDactyl Please take a look at this fantastic new change.
```

This sends a notification to the mentioned user.

---

### 6. **Merging the Pull Request**

Once the PR is approved:

* Click **"Merge pull request"**.
* Confirm merge.

Merging options:

* **Merge Commit**: Keeps all commits from the branch.
* **Squash & Merge**: Combines all commits into one.
* **Rebase & Merge**: Applies commits on top of the main branch sequentially.

---

### 7. **Deleting the Feature Branch**

After merging:

* Delete the feature branch both **on GitHub** and **locally**.

```bash
git branch -d feature/update-heading
```

**Why delete?**
To keep the repository clean and avoid confusion with outdated branches.

---

## **Example: Editing a README File via GitHub UI**

In the transcript example:

1. **Edit README**: Click edit button → Add an exclamation mark.
2. **Create Feature Branch**: Named `updateheading`.
3. **Propose Changes**: GitHub checks merge conflicts automatically.
4. **Open PR**: Add comments, request review.
5. **Merge & Delete Branch**: Merge into `main` and delete branch.

Result: The updated README is now in the `main` branch.

---

## **Workflow Diagram**

```mermaid
graph LR
A[main branch] -->|checkout copy| B[feature branch]
B -->|commit & push changes| C[GitHub feature branch]
C -->|create PR| D[Pull Request]
D -->|review & approve| E[Merge into main]
E -->|delete branch| F[Clean repo]
```

---

## **Key Points to Remember**

* **Never** work directly on `main`.
* **Small commits** are better for review.
* **Always** open a Pull Request for merging.
* Use **code reviews** to maintain quality.
* Delete feature branches after merging.

---

By following **GitHub Flow**, you ensure:

* Cleaner project history.
* Easier collaboration.
* Reduced risk of breaking production code.
