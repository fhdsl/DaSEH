---
title: "Day 1 Cheatsheet"
classoption: landscape
urlcolor: blue
output: pdf_document
---

## Basic R

### Major concepts

- **Package:** A bundle of code and/or data that can be loaded for repeated use or sharing, like an expansion pack.
- **Object:** Something that can be worked with in R.
- **Function:** A piece of code that performs a task in R. Functions can come from base R, additional packages, or your own code.
- **Argument:** An option specified in a function.
- **[`tidyverse`](https://tidyverse.tidyverse.org/articles/paper.html):** A set of packages designed for data science that can make code more intuitive than base R.
- **R console:** A full calculator:
  - `+`, `-`, `/`, and `*` add, subtract, divide, and multiply.
  - `^` or `**` raises to a power.
  - Parentheses, `(` and `)`, control order of operations.
  - `%%` finds the remainder.
- **Comments:** `#` is the comment symbol; nothing to its right is evaluated.

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|------|--------|-------------|-------------|
| Base R | [`<-`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/assignOps.html) | `x <- 1` | Assigns a name, `x`, to something in the R environment. |
| Base R | [`c()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/c) | `x <- c(1, 3)` | Combines values into a vector. |
| Base R | [`str()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/str) | `str(x)` | Summarizes the structure of object `x`. |
| Base R | [`class()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/class) | `class(x)` | Returns the type of values in object `x`. |
| Base R | [`length()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/length) | `length(x)` | Returns the length of object `x`. |
| Base R | [`seq()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/seq) | `seq(from = 0, to = 100, by = 5)` | Generates regular sequences. |
| Base R | [`rep()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/rep) | `rep(1, times = 10)` | Replicates values. Can use the `times` or `length.out` argument. |
| Base R | [`sample()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sample) | `sample(1:12)` | Samples from values, with or without replacement. `replace = TRUE` samples with replacement. |
| Base R | [`install.packages()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/install.packages) | `install.packages("tidyverse")` | Installs packages. |
| Base R | [`library()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/library) | `library(tidyverse)` | Loads and attaches packages to the R environment. Run each time you start R. |

\pagebreak

## RStudio

### Major concepts

- **RStudio:** An Integrated Development Environment (IDE) for R that makes R easier to use.
- **Source/Editor:** Where code is written and saved in an `.R` script.
- **R Console:** Where code is executed. Code entered here is not saved on disk.
- **Workspace/Environment:** Shows objects currently loaded in R.
- **R Markdown:** `.Rmd` files that generate reports with code and output.
- **R Project:** Helps organize work, manage working directories, and track the active project.
- **Getting help:** For any function, use `?FUNCTION_NAME` or `help("FUNCTION_NAME")` to view its help file.
- **RStudio keyboard shortcuts:** [RStudio keyboard shortcuts](http://www.rstudio.com/ide/docs/using/keyboard_shortcuts)

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|------|------|----------|------------------------|
| Base R | [`View()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/View) | `View(mtcars)` | Opens data in a spreadsheet-like viewer. |
| Base R | [`head()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/head) | `head(mtcars)` | Returns the first 6 rows by default. Use the `n` argument to specify the number of rows. |
| Base R | [`tail()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/head) | `tail(mtcars)` | Returns the last 6 rows by default. Use the `n` argument to specify the number of rows. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
