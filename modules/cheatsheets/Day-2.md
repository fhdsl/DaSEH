---
title: Day 2 Cheatsheet
classoption: landscape
urlcolor: blue
---

## Reproducibility

### Major concepts

- **Reproducibility/Reproducible:** A different analyst re-runs the analysis with the same code and data and gets the same result.
- **Repeatable:** The same analysis is repeated under the same conditions and gives the same results.
- **Replicable:** New data are used to test whether the same inferences hold.

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|-------|---------|-----------------|---------------|
| Base R | [`sessionInfo()`](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/sessionInfo) | `sessionInfo()` | Returns the R version, OS, and attached packages in the current R session. |
| Base R | [`sample()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sample) | `sample(x, size = 10, replace = FALSE)` | Returns a random vector of a specified size, with or without replacement. |
| Base R | [`set.seed()`](https://www.rdocumentation.org/packages/simEd/versions/2.0.2/topics/set.seed) | `set.seed(1234)` | Makes random-number output reproducible for subsequent code. |

### More resources

- [The R Markdown book](https://bookdown.org/yihui/rmarkdown/)
- [Jenny Bryan's organizational strategies](https://www.stat.ubc.ca/~jenny/STAT545A/block19_codeFormattingOrganization.html)
- [Write efficient R code for science](https://www.earthdatascience.org/courses/earth-analytics/automate-science-workflows/write-efficient-code-for-science-r/)
- [Reproducibility in Cancer Informatics course](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/introduction.html)

\pagebreak

## Data Input

### Major concepts

- **Delimited file:** A file in which columns are separated by punctuation, such as commas in CSV files or tabs in TSV/TXT files.
- **Tibble:** A rectangular data frame with data organized into rows and columns.
- **File path:** A file’s location on your computer or the internet. [File paths can be relative or absolute](https://en.wikipedia.org/wiki/Path_(computing)#Absolute_and_relative_paths).
- **[R Projects](https://support.rstudio.com/hc/en-us/articles/200526207-Using-RStudio-Projects):** Set the working directory to the folder containing the `.Rproj` file.
- **Reading in data manually:** Download the data and put it in the project folder. In RStudio, go to File > Import Dataset > From Text (`readr`), browse for the file, then click “Update” and “Import.”

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|-------|---------|------------------|-------------|
| `tidyverse` (`readr`) | [`read_csv()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_csv) | `df <- read_csv("<url>")` | Reads in a CSV file from a specified file path. |
| `tidyverse` (`readr`) | [`read_tsv()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_tsv) | `df <- read_tsv("<url>")` | Reads in a TSV file from a specified file path. |
| `tidyverse` (`readr`) | [`read_delim()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_delim) | `df <- read_delim("<url>", delim = ":")` | Reads in a delimited file from a specified file path. |
| Base R | [`head()` / `tail()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/head) | `head(df)` / `tail(df)` | Returns the first or last part of a dataset or other object. |
| Base R | [`getwd()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/getwd) | `getwd()` | Returns the current working directory. |
| Base R | [`setwd()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/getwd) | `setwd("Desktop")` | Changes the current working directory. |
| Base R | [`View()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/View) | `View(df)` | Opens a spreadsheet-style data viewer for a matrix-like R object. |
| Base R | [`str()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/str) | `str(df)` | Displays the internal structure of an R object, including dimensions and class. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
