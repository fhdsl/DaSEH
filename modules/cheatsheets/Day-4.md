---
classoption: landscape
urlcolor: blue
---

# Day 4 Cheatsheet

## Data Summarization

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|---------|----------|----------------|-------------|
| Base R | [`min()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/Extremes) | `min(x)` | Returns the minimum value in object `x`. |
| Base R | [`sum()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sum) | `sum(x)` | Returns the sum of values in object `x` (integer, numeric, or logical). |
| Base R | [`mean()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/mean) | `mean(x)` | Returns the arithmetic mean of values in object `x` (integer, numeric, or logical). |
| Base R | [`log()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/log) | `log(x)` | Returns the natural logarithm of object `x`. Use `log2(x)` for base 2, or specify another base. |
| Base R | [`range()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/range) | `range(x)` | Returns the minimum and maximum values in object `x`. |
| Base R | [`sd()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/sd) | `sd(x)` | Returns the standard deviation of object `x`. |
| Base R | [`sqrt()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/MathFun) | `sqrt(x)` | Returns the square root of object `x`. |
| Base R | [`quantile()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/quantile) | `quantile(x, probs = .5)` | Returns sample quantiles for specified probabilities. |
| Base R | [`summary()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/summary) | `summary(x)` | Returns a summary of values in object `x`. |
| `tidyverse` (`dplyr`) | [`pull()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/pull) | `x_vect <- df |> pull(x)` | Extracts a single column as a vector. Useful before summary functions like `mean()` and `sum()`. |
| `tidyverse` (`dplyr`) | [`summarize()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/summarize) | `df <- df |> summarize(mean_x = mean(x))` | Summarizes values into one or more output values. `summarize()` and `summarise()` are synonyms. |
| `tidyverse` (`dplyr`) | [`distinct()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/distinct) | `df |> distinct(factor_name)` | Displays unique rows from a data frame or tibble. |
| `tidyverse` (`dplyr`) | [`n_distinct()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/n_distinct) | `x_vect |> n_distinct()` | Counts unique values or combinations in one or more vectors. |
| `tidyverse` (`dplyr`) | [`count()`](https://dplyr.tidyverse.org/reference/count.html) | `df |> count(factor_name)` | Counts the number of rows in each group of a factor variable. |
| `tidyverse` (`dplyr`) | [`group_by()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/group_by) | `df |> group_by(factor_name)` | Groups rows by specified value(s). |
| Base R | [`unique()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/unique) | `unique(df)` | Returns object `x` with duplicate elements or rows removed. |
| Base R | [`rowSums()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/rowsum) | `rowSums(df)` | Calculates sums for each row. |
| Base R | [`colSums()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/colSums) | `colSums(df)` | Calculates sums for each column. |
| Base R | [`rowMeans()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/colSums) | `rowMeans(df)` | Calculates means for each row. |
| Base R | [`colMeans()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/colSums) | `colMeans(df)` | Calculates means for each column. |

_NOTE:_  Many summarizing functions (e.g., `mean()`, `sum()`) have the argument `na.rm = TRUE` to ignore missing data.

\pagebreak

## Data Classes

### Major concepts

- **Character:** Strings or individual characters, quoted.
- **Numeric:** Any real number(s).
- **Double:** A subset of numeric values that can contain decimals.
- **Integer:** Whole number(s).
- **Factor:** Categorical or qualitative variables.
- **Logical:** Values composed of `TRUE` or `FALSE`.
- **Date/POSIXct:** Calendar dates and times.
- **Matrix:** Two-dimensional data where all rows and columns have the same data type.
- **Data frame:** Two-dimensional data where columns can have different data types.
- **List:** Data that can vary in dimensions and contain many data types, including vectors, strings, matrices, models, and other lists.

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|---------|-----------|----------------|----------------|
| Base R | [`class()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/class) | `class(x)` | Returns the class of an object. |
| Base R | [`as.numeric()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/numeric) | `as.numeric(x)` | Coerces object `x` to numeric class. Similar functions include `as.character()`, `as.data.frame()`, `as.matrix()`, and `as.Date()`. Use with `mutate()`. |
| `tidyverse` (`lubridate`) | [`ymd()`](https://www.rdocumentation.org/packages/lubridate/versions/1.9.2/topics/ymd) | `ymd("2024-01-31")` | Coerces character object `x` to date class. Use functions such as `mdy()` or `dmy()` for other date formats. |

_NOTE:_  [`lubridate`](https://lubridate.tidyverse.org/) is a powerful, widely used R package from `tidyverse` family to work with Date / POSIXct class objects.

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
