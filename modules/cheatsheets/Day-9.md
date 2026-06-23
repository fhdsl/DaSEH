---
classoption:
- landscape
---

# Day 9 Cheatsheet

## Functions

**Why create your own functions?**
- Cut down on repetitive code (easier to fix things!)
- Organize code into manageable chunks
- Avoid running code unintentionally
- Use names that make sense to you

Syntax for a function is:
```
functionName <- function(inputs) {
  # Document your inputs here
  <function body>
  return(value)
}
```

Example of an anonymous function used with `across()`:
```
iris |> 
     summarize(across( 
         starts_with("Sepal"), 
         \(x) mean(x, na.rm=T)
     ))
```

### Functions

|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`fuction()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/function)| `div_100 <- function(x) x / 100`| Create a new function - in this case x is an input and divided by 100.|
| Base `R`| [`lapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `lapply(some_list, a_function`)| Apply a function over a list or vector.|
| Base `R`| [`sapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `sapply(some_list, a_function`)| Apply a function over a list or vector but by default returns a matrix or vector.|
| `dplyr`| [`across()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/across)| `iris |>` <br> `group_by(Species) |>` <br>  `summarise(across(` <br> `starts_with("Sepal"), ~ mean(.x, na.rm = TRUE))` <br> `)` <br> or `iris |> mutate(across(contains("Sepal"), round))`| Apply a function across groups or columns in a dataframe.
| `purrr`| [`mutate_if()`](https://www.rdocumentation.org/packages/tidytable/versions/0.5.8/topics/mutate_if.)| `iris |> mutate_if(is.numeric, round))`| Apply a function to specific columns in a dataframe.

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
