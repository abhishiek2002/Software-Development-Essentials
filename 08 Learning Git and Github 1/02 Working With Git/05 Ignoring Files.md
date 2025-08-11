# Ignoring Files in Git

## Overview

Git can track almost any file in your project, but sometimes you don’t want everything tracked. Certain files may contain sensitive information, like passwords or API keys, or be irrelevant to your repository, such as operating system metadata or editor-specific settings. This is where the `.gitignore` file comes in.

## Why Ignore Files?

* **Sensitive information**: Passwords, authentication tokens, API keys.
* **Local notes**: To-do items or project-specific notes that shouldn’t be shared.
* **OS files**: e.g., `.DS_Store` on macOS.
* **Editor settings**: e.g., `.vscode/` for Visual Studio Code local preferences.
* **Generated dependencies**: e.g., `node_modules/` created by npm.

Ignored files aren’t uploaded to GitHub, keeping them private and out of version control.

## Creating a `.gitignore` File

1. At the root of your project, create a file named `.gitignore`.
2. Add file names or patterns you want Git to ignore.

   * Example:

     ```
     .DS_Store
     .vscode/
     authentication.js
     node_modules/
     notes/
     *.notes
     ```

     * A trailing slash `/` indicates a folder.
     * Wildcards like `*.notes` ignore files with that extension anywhere.

## Behavior of Ignored Files

* Git doesn’t track empty folders, so they don’t need to be ignored.
* Once a file is in `.gitignore`, Git will not track changes to it (if it’s not already committed).

**Example:**

* Add a `notes/` folder with a file `project-todo.md` inside. This file will be ignored and grayed out in most editors. Running `git status` will show no changes.

## Global `.gitignore`

You can create a global ignore file for all projects:

```bash
git config --global core.excludesfile ~/.gitignore_global
```

Add patterns to this file to apply them across repositories.

## Clearing Git’s Cache

If you add new ignore rules after committing files, Git may still track them due to caching.

* To fix:

```bash
git rm -r --cached .
git add .
git commit -m "Apply updated .gitignore"
```

## Best Practice

Set up your `.gitignore` file at the start of a project. This prevents unnecessary files from being committed and keeps your repository clean.
