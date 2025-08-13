# GitHub Pull Request Features Guide

Pull requests (PRs) are central to **GitHub Flow** and enable collaborative discussion, review, and merging of code.

---

## Comparing Branches

* When creating a PR, you can compare **before** and **after** versions.
* You can choose **any branches** to compare — not just the one you’re merging into.
* The comparison view shows:

  * Changed files
  * Code diffs
  * Options to copy references or view entire files

---

## Draft Pull Requests

* **Purpose:** Share work-in-progress before it’s ready for formal review.
* Marked as **"Cannot be merged until ready for review"**.
* Useful for:

  * Announcing intentions
  * Gathering early feedback
* Switch between draft and regular PR using the dropdown next to the PR type selector.

---

## Collaboration in PRs

* Assign reviewers and collaborators.
* Use the **Conversation tab** for discussion.
* Other participants can react (👍❤️) and comment.
* When ready, mark as **Ready for review**.

---

## PR Tabs Overview

| Tab               | Purpose                                         |
| ----------------- | ----------------------------------------------- |
| **Conversation**  | Central discussion thread                       |
| **Commits**       | Shows commit history for the PR                 |
| **Checks**        | Run CI/CD or security tools (e.g., GitGuardian) |
| **Files changed** | See file diffs and leave inline comments        |

---

## Review Process

1. Reviewer examines changes in **Files changed** tab.
2. Can expand/collapse sections to inspect context.
3. Add inline comments by clicking the **+** next to a line.
4. Options when finishing review:

   * **Approve** → PR can be merged.
   * **Request changes** → PR blocked until changes applied.
   * **Comment only** → Feedback without blocking.

---

## Example Review Scenario

* PR updates from **Bootstrap 4.6** → **Bootstrap 5.3**.
* Reviewer notices leftover **jQuery** script (no longer needed in Bootstrap 5).
* Adds inline comment: *"Looks like you left the jQuery code — you can safely remove that in all files."*
* Requests changes before approval.

---

## Review Tools

* **Inline Editor:** View and comment on code directly in GitHub.
* **Codespaces / VS Code Integration:** Open PR in a full IDE.
* **Checks Tab:** Verify code security & quality.

---

## Approval & Merging

* PR cannot be merged until:

  * All required reviews are approved.
  * All checks pass.
* Once approved → Merge & close PR.

---

**Tip:** Use draft PRs for early collaboration, then formal reviews to ensure code quality before merging.
