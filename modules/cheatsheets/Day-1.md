---
classoption: landscape
output:
  pdf_document: default
  html_document:
    df_print: paged
---

# Day 1 Cheatsheet

## Basic R

### Major concepts

- **Package** - a package in R is a bundle or “package” of code (and or possibly data) that can be loaded together for easy repeated use or for sharing with others. Like an "expansion pack".
- **Function** - a function is a particular piece of code that allows you to dosomething in R. You can write your own, use functions that come directly from installing R, or use functions from additional packages.
- **Argument** - an option that you specify to a function.
- **Object** - an object is something that can be worked with in R - can be lots of different things!
- [**Tidyverse**](https://tidyverse.tidyverse.org/articles/paper.html) - This is a newer set of packages designed for data science that can make your code more intuitive as compared to the original older Base R.
- The R console is a full calculator:
  - `+`, `-`, `/`, `*` are add, subtract, divide and multiply
  - `^` or `**` is power
  - parentheses – ( and ) – work with order of operations
  - %% finds the remainder
- `#` is the comment symbol; nothing to its right is evaluated.

### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`<-`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/assignOps.html)| `x <- 1`| Assigns a name `x` to something in the R environment.|
| Base `R`| [`c()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/c)| `x <- c(1, 3)`| Combines values into a vector. |
| Base `R`| [`str()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/str)|`str(x)`| Gets a summary of the object `x` structure.|
| Base `R`| [`class()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/class)|`class(x)`| Returns the type of the values in object `x`.|
| Base `R`| [`length()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/length)|`length(x)`| Returns how long the object `x` is. |
| Base `R`| [`seq()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/seq)|`seq(from = 0, to = 100, by = 5)`| Generate regular sequences. |
| Base `R`| [`rep()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/rep)|`rep(1, times = 10)`| Replicates the values in x. Can take `times` or `length.out` argument.|
| Base `R`| [`sample()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sample)|`sample(1:12)`| Takes a sample of the specified size from the elements of x using either with or without replacement. `replace = TRUE` samples with replacement. |
| Base `R`| [`install.packages()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/install.packages)| `install.packages("tidyverse")`| Installs packages|
| Base `R`| [`library()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/library)|`library(tidyverse)`| Loads and attaches additional packages to the R environment. Done every time you start R.|

<div style="page-break-after: always;"></div>

## RStudio

### Major concepts

- **RStudio** - an Integrated Development Environment (IDE) for R - makes it easier to use R.
- **Source/Editor** - “Analysis” Script + Interactive Exploration - In a .R file (we call a script), code is saved on your disk
- **R Console** - Where code is executed (where things happen) - Code is not saved on your disk
- **Workspace/Environment** - Tells you what objects are in R. What exists in memory/what is loaded?/what did I read in?
- **R Markdown** - Files (.Rmd) help generate reports that include your code and
output.
- **R Project** - Helps you organize your work. Helps with working directories (discussed later). Allows you to easily know which project you’re on.
- [RStudio Keyboard shortcuts](http://www.rstudio.com/ide/docs/using/keyboard_shortcuts)


### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
|Base `R`| [`View()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/library)| `View(mtcars)`| allows you to view data in a spreadsheet format.|
| Base `R`| [`head()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/head)|`head(mtcars)`| Returns the top 6 rows of an object in the environment by default. You can specify how many rows you want by including the `n = `argument.|
| Base `R`| [`tail()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/head)|`tail(mtcars)`| Returns the bottom 6 rows of an object in the environment by default. You can specify how many rows you want by including the `n =` argument.|

<div style="page-break-after: always;"></div>

\* This format was adapted from the [cheatsheet format from AlexsLemonade](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
