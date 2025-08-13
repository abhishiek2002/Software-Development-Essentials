# GitHub Pull Requests Guide

A **Pull Request (PR)** is how users propose changes to be merged into the main branch of a repository. They are core to collaborative development on GitHub.

---

## Creating a Pull Request (on GitHub)

1. **Navigate to the file** you want to change.
2. Click the **edit (✏️) button**.
3. Make your changes using the built-in editor (syntax highlighting + line numbers).
4. **Preview** changes to verify.
5. Add a **commit message** (short title; optional extended description).
6. Choose:

   * **Commit directly to `main`** (not recommended for team projects), or
   * **Create a new branch** → generates a Pull Request.
7. Name the branch (e.g., `titlechange`).
8. Click **Propose changes**.
9. Fill in PR title/description.
10. Click **Create pull request**.

---

## Pull Request Workflow

1. **PR Opens** → Discussion thread starts.
2. **Conversation** → Team members comment, suggest changes.
3. **Review Changes** → View affected files & highlighted diffs.
4. **Merge** when ready:

   * Click **Merge pull request**
   * Click **Confirm merge**
5. **PR Closes** automatically after merge.

---

## Project Management Features in PRs

* **Assignees** → Assign team members to review or approve changes.
* **Labels** → Categorize PRs (`help wanted`, `bug`, `enhancement`).
* **Milestones** → Link PRs to target deadlines/goals.
* **Linked Issues** → Automatically close related issues when PR merges.
* **Commits Tab** → Shows commits included in PR.
* **Files Changed Tab** → Displays exact changes.

---

## Example: Linking a PR to an Issue

1. Create an issue: *"Fix project title"*.
2. Open a PR with changes.
3. In the PR description, add:

   ```
   Closes #<issue-number>
   ```
4. When PR merges → Issue closes automatically.

---

## After Merge

* Changes appear in the repository.
* If the repo has GitHub Pages enabled, updates may take time to reflect on the site.

---

## Visual Workflow

```
Edit file → Create branch → Propose changes → Review & discuss → Merge → Close PR → Deploy changes
```

---

**Key Tip:** PRs are not just for merging code — they are a space for discussion, code review, and collaboration before integrating changes.
