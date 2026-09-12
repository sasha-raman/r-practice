# Project Environment Management with renv

This project uses **`renv`** to manage local package dependencies. It works exactly like Python's `requirements.txt` or Node's `package.json`, ensuring everyone working on this project uses the exact same package versions without clashing with global system packages.

---

## 🚀 1. Why We Use renv
* **Isolation:** Packages installed in this project will not affect your other R projects, and vice versa.
* **Reproducibility:** Locks down exact version numbers so code doesn't break when CRAN updates a package.
* **Portability:** Easily share code without forcing others to manually guess and install missing libraries.

---

## 🛠️ 2. How to Enable & Initialize
If you are starting a fresh project or turning on isolation for the first time, run this in your RStudio console:

```R
install.packages("renv")  # Install the tool globally once
renv::init()              # Initialize the local project sandbox
```
*Note: This creates a project-specific library and hooks into your R session.*

---

## 💻 3. Daily Usage Workflow

### Installing Packages
Just use your standard installation commands. Because `renv` is active, it will automatically sandbox them inside this folder:
```R
install.packages("tidyverse")
```

### Saving the State (Like `pip freeze`)
Whenever you add, update, or remove packages, take a metadata snapshot to update the lockfile:
```R
renv::snapshot()
```

---

## 🐙 4. Version Control (Git Rules)

### ✅ What to COMMIT
We only commit the lightweight text files that describe our environment. Add these to Git:
* `renv.lock` (The core lockfile; our `requirements.txt` equivalent)
* `.Rprofile` (Tells RStudio to automatically boot up renv upon opening)
* `renv/activate.R` (The helper script that makes the activation work)

### ❌ What to IGNORE
**Never** commit the actual installed package code. Ensure your project's `.gitignore` file contains the following paths:
```text
# Ignore the actual local package code installations
renv/library/
renv/sandbox/
renv/staging/
```

---

## 🔄 5. How to Restore on a New Machine / Target
When you clone this repository onto a new computer or pull a teammate's changes, you will have the lockfile but **no installed packages**. 

To safely reconstruct the environment:
1. Open the project (`.Rproj`) in RStudio.
2. Run the following command in the console to download and install the exact matching ecosystem:

```R
renv::restore()
```
