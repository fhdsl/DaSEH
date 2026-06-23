---
classoption: landscape
urlcolor:blue
---

# Day 5 Cheatsheet

## Data Cleaning

### Major concepts

- **Most important rule of data handling - Always be looking at your data!**
- `NA` - general missing data
- `NaN` - stands for “Not a Number”, happens when you do 0/0.
- `Inf` and `-Inf` - Infinity, happens when you take a positive number (or negative number) by 0.
- Sometimes you need to look at lots of data though... the [`naniar` package](https://cran.r-project.org/web/packages/naniar/vignettes/getting-started-w-naniar.html) is a good option.
- `stringr` package has great functions for looking for specific **parts of character values** especially `filter()` and `str_detect()` combined

### Examples

- Example of `case_when()` used with `mutate()`:

	```
Orange |> 
     mutate(old = case_when(
          age >1000 ~ TRUE,
          .default = FALSE
     ))
	```

### Functions

|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
|Base `R`| [`is.na(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/NA)|`is.na(x) \newline any(is.na(x))`| checks if `x` is `NA`. With `any()`, checks if any values are `NA`. |
|Base `R`| [` is.nan(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/NA)|`is.nan(x)`| checks if `x` is `NaN`. |
|Base `R`| [` is.infinite(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/is.finite)|`is.infinite(x)`| checks if `x` is `Inf` or `-Inf`. |
|`naniar`| [`pct_complete(x)`](https://www.rdocumentation.org/packages/naniar/versions/0.6.1/topics/pct_complete)|`pct_complete(x)`| Reports the percentage of data that is complete in `x`. |
|`naniar`| [`gg_miss_var(x)`](https://www.rdocumentation.org/packages/naniar/versions/0.6.1/topics/gg_miss_var)|`gg_miss_var(x)`| Reports as a plot the percentage of data that is complete in `x`. |
|`naniar`| [`miss_var_summary(x)`](https://www.rdocumentation.org/packages/naniar/versions/1.1.0)|`miss_var_summary(x)`| Reports as a table the percentage of data that is missing in `x`. |
|`naniar`| [`miss_var_which(x)`](https://www.rdocumentation.org/packages/naniar/versions/1.1.0)|`miss_var_which(x)`| Returns a vector of variable names that contain missings in `x`. |
|`tidyr`| [`drop_na(df)`](https://tidyr.tidyverse.org/reference/drop_na.html)|`drop_na(df)` \newline `drop_na(variable)`| Drops rows of `NA` from a given data frame/tibble. When a variable is specified, only drops rows where that specific variable is `NA`. |
|`dplyr`| [`na_if()`](https://www.rdocumentation.org/packages/dplyr/versions/0.5.0/topics/na_if)|`na_if(vector, value)`| Converts values you specify to `NA`. Use with `mutate()`. |
|`tidyr`| [`replace_na()`](https://www.rdocumentation.org/packages/tidyr/versions/0.8.1/topics/replace_na)|`replace_na(vector, value)`| Replace `NA` values with a value of your choosing. Use with `mutate()`. |
| `dplyr`| [`case_when()`](https://dplyr.tidyverse.org/reference/case-and-replace-when.html)| `case_when(test ~ outcome, .default = x)`|This function allows you to vectorize multiple [`if_else()`](https://dplyr.tidyverse.org/reference/if_else.html) statements.  If no cases match, NA is returned. The `.default` argument can be used to specify a no-match value. Use with `mutate()`.|
| `dplyr`| [`mutate()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/mutate)| `df <- mutate(df, newcol = wt/2.2)`| Adds a new column that is a function of existing columns|
| `dplyr`| [`separate()`](https://tidyr.tidyverse.org/reference/separate.html)| `df |> separate(x, c("A", "B"))`| Separate a character column into multiple columns with a regular expression or numeric locations|
| `dplyr`| [`unite()`](https://tidyr.tidyverse.org/reference/unite.html)| `df |> unite("z", x:y, remove = FALSE)`| Unite multiple columns together into one column|
| `stringr`|[`str_detect`](https://www.rdocumentation.org/packages/stringr/versions/1.4.0/topics/str_detect)| `df |> filter(str_detect(col_name, "string_pattern"))`| Returns logical vector to indicate if string pattern was detected |
| `stringr`|[`str_replace`](https://stringr.tidyverse.org/reference/str_replace.html)| `str_replace(string = vector, "replace_me","with_me")`| Replaces first instance of one specified string with another specified string |
| `stringr`|[`str_replace_all`](https://stringr.tidyverse.org/reference/str_replace.html)| `str_replace(string = vector, "replace_me","with_me")`| Replaces all instances of one specified string with another specified string |
| `stringr`|[`str_sub`](https://stringr.tidyverse.org/reference/str_sub.html)| `str_sub(string = vector, start = 1, end = 3)`| Subsets a string to just the places of the characters specified. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
