---
classoption: landscape
urlcolor: blue
---

# Day 5 Cheatsheet

## Data Cleaning

### Major concepts

- **Most important rule of data handling:** Always look at your data.
- **`NA`:** General missing data.
- **`NaN`:** “Not a Number”; occurs when you calculate `0/0`.
- **`Inf` and `-Inf`:** Infinity; occurs when you divide a positive or negative number by `0`.
- **`naniar`:** Useful for exploring missingness in large datasets. See the [`naniar` package](https://cran.r-project.org/web/packages/naniar/vignettes/getting-started-w-naniar.html).
- **`tidyverse` (`stringr`):** Useful for detecting and working with parts of character values, especially with `filter()` and `str_detect()`.

### Examples

Example of `case_when()` with `mutate()`:

```r
Orange |>
  mutate(old = case_when(
    age > 1000 ~ TRUE,
    .default = FALSE
  ))
```

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|----|-----|-------|-------|
| Base R | [`is.na()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/NA) | `is.na(x)` \newline `any(is.na(x))` | Checks if `x` is `NA`. With `any()`, checks if any values are `NA`. |
| Base R | [`is.nan()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/NA) | `is.nan(x)` | Checks if `x` is `NaN`. |
| Base R | [`is.infinite()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/is.finite) | `is.infinite(x)` | Checks if `x` is `Inf` or `-Inf`. |
| `naniar` | [`pct_complete()`](https://www.rdocumentation.org/packages/naniar/versions/0.6.1/topics/pct_complete) | `pct_complete(x)` | Reports the percentage of complete data in `x`. |
| `naniar` | [`gg_miss_var()`](https://www.rdocumentation.org/packages/naniar/versions/0.6.1/topics/gg_miss_var) | `gg_miss_var(x)` | Plots the percentage of missing data by variable in `x`. |
| `naniar` | [`miss_var_summary()`](https://www.rdocumentation.org/packages/naniar/versions/1.1.0) | `miss_var_summary(x)` | Reports the percentage of missing data by variable in `x`. |
| `naniar` | [`miss_var_which()`](https://www.rdocumentation.org/packages/naniar/versions/1.1.0) | `miss_var_which(x)` | Returns variable names that contain missing values in `x`. |
| `tidyverse` (`tidyr`) | [`drop_na(df)`](https://tidyr.tidyverse.org/reference/drop_na.html) | `drop_na(df)` \newline `drop_na(variable)` | Drops rows with `NA` values. When a variable is specified, only drops rows where that variable is `NA`. |
| `tidyverse` (`dplyr`) | [`na_if()`](https://www.rdocumentation.org/packages/dplyr/versions/0.5.0/topics/na_if) | `na_if(vector, value)` | Converts specified values to `NA`. Use with `mutate()`. |
| `tidyverse` (`tidyr`) | [`replace_na()`](https://www.rdocumentation.org/packages/tidyr/versions/0.8.1/topics/replace_na) | `replace_na(vector, value)` | Replaces `NA` values with a specified value. Use with `mutate()`. |
| `tidyverse` (`dplyr`) | [`case_when()`](https://dplyr.tidyverse.org/reference/case-and-replace-when.html) | `case_when(test ~ outcome, .default = x)` | Vectorizes multiple [`if_else()`](https://dplyr.tidyverse.org/reference/if_else.html) statements. If no cases match, `NA` is returned unless `.default` is specified. Use with `mutate()`. |
| `tidyverse` (`dplyr`) | [`mutate()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/mutate) | `df <- mutate(df, newcol = wt / 2.2)` | Adds a new column based on existing columns. |
| `tidyverse` (`tidyr`) | [`separate()`](https://tidyr.tidyverse.org/reference/separate.html) | `df |> separate(x, c("A", "B"))` | Separates one character column into multiple columns using a regular expression or numeric locations. |
| `tidyverse` (`tidyr`) | [`unite()`](https://tidyr.tidyverse.org/reference/unite.html) | `df |> unite("z", x:y, remove = FALSE)` | Unites multiple columns into one column. |
| `tidyverse` (`stringr`) | [`str_detect()`](https://www.rdocumentation.org/packages/stringr/versions/1.4.0/topics/str_detect) | `df |> filter(str_detect(col_name, "string_pattern"))` | Returns a logical vector indicating whether a string pattern was detected. |
| `tidyverse` (`stringr`) | [`str_replace()`](https://stringr.tidyverse.org/reference/str_replace.html) | `str_replace(string = vector, "replace_me", "with_me")` | Replaces the first instance of one specified string with another. |
| `tidyverse` (`stringr`) | [`str_replace_all()`](https://stringr.tidyverse.org/reference/str_replace.html) | `str_replace_all(string = vector, "replace_me", "with_me")` | Replaces all instances of one specified string with another. |
| `tidyverse` (`stringr`) | [`str_sub()`](https://stringr.tidyverse.org/reference/str_sub.html) | `str_sub(string = vector, start = 1, end = 3)` | Subsets a string to the specified character positions. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
