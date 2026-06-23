---
title: "Day 3 Cheatsheet"
classoption: landscape
urlcolor: blue
output: pdf_document
---

## Subsetting Data in R

### Functions

| Library/Package | Code | Example | What it does |
|---------|-------------|----------------|-------------|
| Base R | [`nrow()`; `ncol()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/nrow) | `nrow(x)`; `ncol(x)` | Get the number of rows and columns in object `x`, respectively. |
| Base R | [`dim()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/dim) | `dim(x)` | Get the number of rows and columns in object `x`. |
| `tidyverse` (`dplyr`) | [`glimpse()`](https://dplyr.tidyverse.org/reference/glimpse.html) | `glimpse(mtcars)` | Get an overview of data frame `x`. |
| `tidyverse` (`dplyr`) | [`slice_sample()`](https://dplyr.tidyverse.org/reference/slice.html) | `slice_sample(mtcars)` | View a random subset of rows from `x`. |
| Base R | [`data.frame()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/data.frame) | `df <- data.frame(1:3)` | Create a data frame. Named arguments must have the same length. |
| `tidyverse` (`tibble`) | [`tibble()`](https://tibble.tidyverse.org/reference/tibble.html) | `tibble(mtcars)` | Create a tibble from a data frame or matrix. |
| `tidyverse` (`tibble`) | [`rownames_to_column()`](https://www.rdocumentation.org/packages/tibble/versions/1.4.2/topics/rownames) | `df <- rownames_to_column(df, "new_col")` | Convert row names to a new first column. The argument names the new column. |
| Base R | [`colnames()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/row%2Bcolnames) | `colnames(df)` | Get or set column names for a matrix or data frame. |
| `tidyverse` (`dplyr`) | [`rename()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/rename) | `df <- rename(df, MPG = mpg)` | Rename selected columns while keeping all variables. |
| `tidyverse` (`dplyr`) | [`rename_with()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/rename) | `df <- rename_with(df, toupper)` | Rename selected columns with a function. |
| Base R | [`toupper()`](https://www.rdocumentation.org/packages/base/versions/3.3.0/topics/chartr) | `toupper("text")` | Convert lowercase characters to uppercase. |
| Base R | [`tolower()`](https://www.rdocumentation.org/packages/base/versions/3.3.0/topics/chartr) | `tolower("TEXT")` | Convert uppercase characters to lowercase. |
| `janitor` | [`clean_names()`](https://www.rdocumentation.org/packages/janitor/versions/1.0.0/topics/clean_names) | `clean_names(df)` | Return a data frame with clean names. |
| `tidyverse` (`dplyr`) | [`pull()`](https://dplyr.tidyverse.org/reference/pull.html) | `pull(df, "existing_variable_name")` | Extract a column as a vector. Base R notation: `df$column`. |
| `tidyverse` (`dplyr`) | [`select()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/select) | `select(df, "existing_variable_name")` | Select columns that match the specified argument. (_See note_) |
| `tidyverse` (`dplyr`) | [`filter()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/filter) | `filter(df, mpg > 20)` | Return rows that match the specified logical condition. |
| Base R | [`==`, `<=`, `>=`, `!=`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Comparison.html) | `filter(df, mpg > 20)` | Compare values in an object. Useful with `filter()`. |
| Base R | [`%in%`](http://www.datasciencemadesimple.com/in-operator-in-r/) | `filter(df, mpg %in% c(20, 21, 22))` | Check whether values on the left are in the object on the right. Returns `TRUE` or `FALSE`. |
| Base R | [`|>`](https://www.tidyverse.org/blog/2023/04/base-vs-magrittr-pipe/) | `df <- df |> select("variable_name")` | Pipe a data frame through additional operations. |
| `tidyverse` (`magrittr`) | [`%>%`](https://www.rdocumentation.org/packages/magrittr/versions/1.5/topics/%25%26gt%3B%25) | `df <- df %>% select("variable_name")` | Pipe a data frame through tidyverse operations. |
| `tidyverse` (`dplyr`) | [`mutate()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/mutate) | `df <- mutate(df, newcol = wt / 2.2)` | Add a new column based on existing columns. |
| `tidyverse` (`dplyr`) | [`relocate()`](https://dplyr.tidyverse.org/reference/relocate.html) | `df_carb <- relocate(.data = df, wt, .before = mpg)` | Reorder columns in a data frame or tibble. |
| `tidyverse` (`dplyr`) | [`arrange()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/arrange) | `df <- arrange(df, mpg)` | Reorder rows in ascending order. Use `arrange(desc())` for descending order. |

_NOTE:_ See [tidyselect helpers](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html) (`?dplyr_tidy_select`) for handy logical functions to use with `select()`.

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
