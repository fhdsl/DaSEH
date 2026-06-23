---
classoption: landscape
urlcolor:blue
---

# Day 9 Cheatsheet

## Functions

### Major concepts

- **Create your own functions to:**
	- Do custom actions
	- Cut down on repetitive code (easier to fix things!)
	- Organize code into manageable chunks
	- Avoid running code unintentionally
	- Use names that make sense to you

- **Syntax for a custom function:**

	```
functionName <- function(inputs) {
     # Document your inputs here
     <function body>
     return(value)
}
	```

- Example of an **anonymous function** used with `across()`:
     
	```
iris |> 
     summarize(across( 
         starts_with("Sepal"), 
         \(x) mean(x, na.rm=TRUE)
     ))
	```

### Functions

|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`function()` or `\()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/function)| `div_100 <- function(x) x / 100` \newline `div_100 <- \(x) x / 100`| Create a new function - in this case x is an input and divided by 100.|
| Base `R`| [`lapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `lapply(some_list, a_function`)| Apply a function over a list or vector.|
| Base `R`| [`sapply()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/lapply)| `sapply(some_list, a_function`)| Apply a function over a list or vector but by default returns a matrix or vector.|
| `dplyr`| [`across()`](https://www.rdocumentation.org/packages/dplyr/versions/1.0.10/topics/across)| `iris |>`  \newline \hspace*{0.25em} `mutate(across(`  \newline \hspace*{0.5em} `contains("Sepal"), round` \newline \hspace*{0.25em} `))` \newline or \newline `iris |>` \newline \hspace*{0.25em} `group_by(Species) |>` \newline \hspace*{0.25em} `summarise(across(` \newline \hspace*{0.5em} `starts_with("Sepal"),` \newline \hspace*{0.5em} `\(x) mean(x, na.rm = TRUE)` \newline \hspace*{0.25em} `))`| Apply a function across groups or columns in a dataframe.
| `purrr`| [`mutate_if()`](https://www.rdocumentation.org/packages/tidytable/versions/0.5.8/topics/mutate_if.)| `iris |> mutate_if(is.numeric, round))`| Apply a function to specific columns in a dataframe.

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
