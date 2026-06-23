---
classoption: landscape
urlcolor: blue
---

# Day 9 Cheatsheet

## Functions

### Major concepts

- **Create functions to:**
  - Do custom actions
  - Reduce repetitive code
  - Organize code into manageable chunks
  - Avoid running code unintentionally
  - Use names that make sense to you

- **Custom function syntax:**

  ```
  function_name <- function(inputs) {
      # Document inputs here
      <function body>
      return(value)
  }
  ```

### Examples

Example of an **anonymous function** used with `across()`:

```r
iris |>
  summarize(across(
    starts_with("Sepal"),
    \(x) mean(x, na.rm = TRUE)
  ))
```

### Functions

| Library/package | Piece of code | Example of usage | What it does |
|---|---|------|------|
| Base R | [`function()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/function) or [`\()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/function) | `div_100 <- function(x) x / 100` \newline or \newline `div_100 <- \(x) x / 100` | Creates a function; here, `x` is divided by 100. |
| Base R | [`lapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply) | `lapply(some_list, a_function)` | Applies a function over a list or vector. |
| Base R | [`sapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply) | `sapply(some_list, a_function)` | Applies a function over a list or vector; returns a matrix or vector by default. |
| `tidyverse` (`dplyr`) | [`across()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/across) | `iris |>` \newline \hspace*{0.25em} `mutate(across(` \newline \hspace*{0.5em} `contains("Sepal"), round` \newline \hspace*{0.25em} `))` \newline or \newline `iris |>` \newline \hspace*{0.25em} `group_by(Species) |>` \newline \hspace*{0.25em} `summarise(across(` \newline \hspace*{0.5em} `starts_with("Sepal"),` \newline \hspace*{0.5em} `\(x) mean(x, na.rm = TRUE)` \newline \hspace*{0.25em} `))` | Applies a function across columns in a data frame. |
| `tidyverse` (`dplyr`) | [`mutate_if()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/mutate_all) | `iris |> mutate_if(is.numeric, round)` | Applies a function to selected columns in a data frame. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
