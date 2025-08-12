# GitHub Flavored Markdown (GFM) Additions

GitHub has expanded standard Markdown with additional features, collectively called **GitHub Flavored Markdown (GFM)**. Some work anywhere on GitHub, while others are specific to pull requests, issues, and discussions.

---

## 1. Footnotes

**Syntax:**

```markdown
Here is a statement with a footnote.[^1]

[^1]: This is the footnote text.
```

**Behavior:**

* Footnote markers link to a list at the bottom of the page.
* Each footnote has a backlink to the reference point.

---

## 2. Tables

**Syntax:**

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|:--------:|---------:|
| Left     | Center   | Right    |
| A        | B        | C        |
```

**Notes:**

* `:` left = left align (default)
* `:---:` = center align
* `---:` = right align
* Outer pipes (`|`) and spacing are optional.
* Tables often render with alternating row shading.

**Slash Command Helper:** Available in pull requests/issues to auto-generate tables.

---

## 3. Task Lists (Checklists)

**Syntax:**

```markdown
- [x] Completed task
- [ ] Incomplete task
```

**Behavior:**

* Render as interactive checkboxes in certain contexts (e.g., projects, PRs).

---

## 4. Collapsible Details Sections

**Syntax:**

```html
<details>
  <summary>Click to expand</summary>
  <h3>Header</h3>
  <p>Hidden content here.</p>
</details>
```

**Behavior:**

* Creates expandable/collapsible content blocks.

---

## 5. File Uploads

* Supports drag-and-drop for images, GIFs, audio, video (≤50 MB), ZIPs, PDFs.
* Files are uploaded and automatically linked.

---

## 6. Mentions & References

* `@username` → mention a user.
* `#123` → reference an issue or pull request.
* `:emoji_name:` → insert emoji (autocomplete available).
* `#hexcolor` inside backticks → displays color preview.

---

## 7. Alerts (Issues, PRs, Discussions only)

**Syntax:**

```markdown
> [!NOTE]
> This is an informational note.

> [!IMPORTANT]
> This is important information.

> [!WARNING]
> This is a warning.
```

**Behavior:**

* Renders with different colors and icons for emphasis.

---

## 8. Mermaid Diagrams

**Syntax:**

````markdown
```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
````

**Behavior:**

* Supports flowcharts, sequence diagrams, and other diagram types.

---

## 9. HTML Support & Restrictions

Allowed:

* `<details>`, `<summary>`, headings, paragraphs, etc.

Disallowed (for security):

* `<iframe>`, `<embed>`, `<script>`, `<style>`, form inputs, etc.

---

**Tip:** Not all features work everywhere—many are context-specific to PRs, issues, or discussions.
