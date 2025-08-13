# GitHub Pages Guide

## 1. Overview

GitHub Pages allows you to host and publish **static websites** for free, directly from a GitHub repository.

* Public repos: Free for everyone.
* Private repos: Requires a Pro account.
* Hosted under `github.io` by default, but you can add a **custom domain**.
* Best for static content (HTML, CSS, JS, Markdown).

Example:

* **Author’s blog:** [raybo.org](https://raybo.org) hosted entirely on GitHub Pages.

---

## 2. Hosting Setup

You can find the **Pages** settings in:

```
Repository → Settings → Pages
```

### Hosting Options

1. **Deploy from a branch** (simplest method)

   * Choose branch (e.g., `main` or `gh-pages`).
   * Choose folder:

     * **Root** (`/`) — HTML files at repo root.
     * **/docs** — HTML files inside a `docs` folder.
   * Must have an `index.html` in the chosen location.

2. **Deploy using GitHub Actions**

   * More flexible.
   * Can use **Jekyll** to turn Markdown into HTML.
   * Requires additional configuration.

3. **Static files in repo**

   * Same as “deploy from a branch.”

---

## 3. Custom Domains

You can:

* Add a custom domain (e.g., `raybo.org`).
* Configure at your **domain service provider**.
* Enable **Enforce HTTPS** for secure browsing.
* Enterprise accounts: Option to restrict access (private Pages).

### Special Repository for Main Domain

If your repo is named:

```
username.github.io
```

GitHub will automatically serve it at:

```
https://username.github.io
```

Or, with a custom domain, directly at your domain.

---

## 4. Example: Deploy from Root Folder

1. In **Settings → Pages**, choose:

   * Branch: `main`
   * Folder: `/` (root)
2. Ensure an `index.html` exists at root.
3. Any changes pushed will update the live site.

Example structure:

```
index.html
style.css
script.js
```

If using `/docs`, the folder would be:

```
docs/index.html
docs/style.css
docs/script.js
```

---

## 5. Benefits of a Custom Domain Setup

* Professional branding.
* Any additional repos will be served from the same domain instead of `github.io`.
* Easier for visitors to remember.

---

## 6. Learn More

* GitHub Docs: [https://docs.github.com/en/pages](https://docs.github.com/en/pages)
* Course: *Learning GitHub Pages* (Ray’s course)

---

**Tip:** Use GitHub Pages for portfolios, documentation, or simple blogs without backend needs.
