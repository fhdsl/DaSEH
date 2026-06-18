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
### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`fuction()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/function)| `div_100 <- function(x) x / 100`| Create a new function - in this case x is an input and divided by 100.|
| Base `R`| [`lapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `lapply(some_list, a_function`)| Apply a function over a list or vector.|
| Base `R`| [`sapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `sapply(some_list, a_function`)| Apply a function over a list or vector but by default returns a matrix or vector.|
| `dplyr`| [`across()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/across)| `iris |> group_by(Species) |> summarise(across(starts_with("Sepal"), ~ mean(.x, na.rm = TRUE)))` <br> or `iris |> mutate(across(contains("Sepal"), round))`| Apply a function across groups or columns in a dataframe.

\* This format was adapted from the [cheatsheet format from AlexsLemonade](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
