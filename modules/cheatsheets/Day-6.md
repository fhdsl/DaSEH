---
title: "DaSEH Day 6 Cheatsheet"
classoption: landscape
urlcolor: blue
output: pdf_document
---

## Data Manipulation

### Major concepts

- **Wide data:** Multiple columns per individual, with values spread across columns
- **Long data:** Multiple rows per observation, with values stored in a single column

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|-----|-----|----------|--------------|
| `tidyverse` (`tidyr`) | [`separate()`](https://tidyr.tidyverse.org/reference/separate.html) | `df |> separate(x, c("A", "B"))` | Separates a character column into multiple columns using a regular expression or numeric positions |
| `tidyverse` (`tidyr`) | [`unite()`](https://tidyr.tidyverse.org/reference/unite.html) | `df |> unite("z", x:y, remove = FALSE)` | Combines multiple columns into one column |
| `tidyverse` (`tidyr`) | [`pivot_longer()`](https://tidyr.tidyverse.org/reference/pivot_longer.html) | `df |> pivot_longer(!col_to_keep, names_to = "new_col_with_labels", values_to = "new_col_with_values")` | Lengthens a data frame by increasing rows and decreasing columns |
| `tidyverse` (`tidyr`) | [`pivot_wider()`](https://tidyr.tidyverse.org/reference/pivot_wider.html) | `df |> pivot_wider(names_from = "col_with_names", values_from = "col_with_values")` | Widens a data frame by decreasing rows and increasing columns |
| `tidyverse` (`dplyr`) | [`?_join()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/join) | `inner_join(x, y)` | Joins data from two data frames. \newline `inner_join(x, y)` Keeps only rows that match in both `x` and `y`. \newline `full_join(x, y)` Keeps all rows from `x` and `y`. \newline `left_join(x, y)` Keeps all rows from `x`, even if they do not match `y`. \newline `left_join(x, y)` Keeps all rows from `y`, even if they do not match `x`. \newline `anti_join(x, y)` Keeps rows from `x` that do not match `y`, retaining only columns from `x`. |

\pagebreak

## Data Visualization with `esquisse`

### Major concepts

- **`esquisse`:** Package for testing and learning the syntax for making plots

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|----|-----|---------|-------|
| `esquisse` | [`esquisser()`](https://cran.r-project.org/web/packages/esquisse/vignettes/get-started.html) | `esquisser(Orange)` \newline `esquisser(Orange, viewer = "browser")` | Starts an interactive `esquisse` session to create a plot from a `data.frame` or `tibble` |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).

\* Find more resources at https://daseh.org.
