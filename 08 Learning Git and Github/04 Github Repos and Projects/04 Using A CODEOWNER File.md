# Using a CODEOWNERS File and Branch Protection in GitHub

## Overview

A **CODEOWNERS** file allows you to automatically assign specific people or teams as reviewers for changes made to certain files or directories in a GitHub repository. Combined with **branch protection rules**, this ensures that key branches (e.g., `main`) cannot be updated without proper review and approval.

---

## Steps to Set Up a CODEOWNERS File

1. **Repository Requirements**

   * Repository must be **public** or you need a **GitHub Pro** account to use CODEOWNERS.

2. **Create the CODEOWNERS File**

   * Go to the **main branch**.
   * Create a new file named `CODEOWNERS` in the root directory.
   * Define ownership rules. Example:

     ```
     * @jojohumphreys
     ```

     This assigns **all files** (`*`) to `@jojohumphreys`.

3. **Commit the CODEOWNERS File**

   * Commit directly to `main` or via a pull request.
   * Once committed, the listed owners will automatically be requested as reviewers for relevant changes.

---

## Setting Up Branch Protection Rules

1. Go to **Settings → Branches**.
2. Click **Add branch protection rule**.
3. Specify the branch name (e.g., `main`).
4. Enable:

   * **Require a pull request before merging**.
   * **Require at least one approval before merging**.
5. Save and authenticate if prompted.

These rules prevent direct pushes and require code reviews.

---

## Example Workflow

### Developer Actions

1. Create a new branch (e.g., `fixed-icons`).
2. Make changes (e.g., remove unused Font Awesome links from files).
3. Commit and push the branch.
4. Open a pull request.

### Automatic Reviewer Assignment

* GitHub will auto-assign reviewers defined in the `CODEOWNERS` file.
* Pull request will be **blocked from merging** until approval is given.

### Reviewer Actions

1. Reviewer gets a **notification**.
2. Reviewer checks the **Files changed** tab.
3. Reviewer **approves** changes (optionally with a comment).

### Merge and Cleanup

* After approval, the branch can be merged.
* Delete the branch after merge to keep the repo clean.

---

## Benefits

* Enforces code review standards.
* Ensures domain experts review relevant code.
* Protects critical branches from unreviewed changes.
* Improves collaboration and accountability.

---

## CODEOWNERS Syntax Reference

| Pattern    | Meaning                             |
| ---------- | ----------------------------------- |
| `*`        | All files in the repository         |
| `/path/`   | Specific directory                  |
| `*.ext`    | All files with a specific extension |
| `file.txt` | Specific file                       |

---

**Example CODEOWNERS file:**

```
# All files require JoJo's review
* @jojohumphreys

# JS files require the Frontend team
*.js @frontend-team

# Specific file requires lead review
/docs/README.md @project-lead
```

---

**In summary:**
Using a `CODEOWNERS` file with branch protection rules ensures changes are reviewed by the right people before they are merged, maintaining high code quality and security.
