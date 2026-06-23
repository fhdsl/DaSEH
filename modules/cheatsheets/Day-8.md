---
title: "DaSEH Day 8 Cheatsheet"
classoption: landscape
urlcolor: blue
output: pdf_document
---

## Statistics

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|---|---|------|------|
| Base R | [`cor()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/cor) | `cor(x, y)` | Calculates correlation between two vectors. |
| `corrplot` | [`corrplot()`](https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html) | `corrplot(cor_mat, type = "upper", order = "hclust")` | Creates a correlation matrix plot. |
| Base R | [`t.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test) | `t.test(x, y, alternative = "two.sided")` | Performs one- and two-sided t-tests. |
| `broom` | [`tidy()`](https://broom.tidymodels.org/) | `tidy(t_test_result)` | Converts statistical objects to tidy data frames. |
| Base R | [`wilcox.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test) | `wilcox.test(x, y)` | Performs nonparametric Wilcoxon signed-rank or rank-sum tests. |
| Base R | [`shapiro.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/shapiro.test) | `shapiro.test(x)` | Tests normality with the Shapiro-Wilk test. |
| Base R | [`ks.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/ks.test) | `ks.test(x)` | Tests a distribution with the Kolmogorov-Smirnov test. |
| Base R | [`var.test()`](http://www.sthda.com/english/wiki/f-test-compare-two-variances-in-r) | `var.test(x, y)` | Compares two variances with Fisher's F-test. |
| Base R | [`chisq.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/chisq.test) | `chisq.test(x, y)` | Performs chi-squared contingency table and goodness-of-fit tests. |
| Base R | [`summary()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/summary) | `summary(linear_model_result)` | Summarizes an object, including models and statistical test results. |
| Base R | [`glm()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/glm) | `glm(x ~ y, data = df, family = binomial())` | Fits generalized linear models; specify distribution and link with `family`. |
| `epitools` | [`oddsratio()`](https://www.rdocumentation.org/packages/epitools/versions/0.5-10.1/topics/oddsratio) | `oddsratio(x, y)` | Calculates odds ratios. |

\pagebreak

## Data Output

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|---|---|------|------|
| `tidyverse` (`readr`) | [`write_csv()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/write_delim) | `write_csv(df, "file.csv")` | Writes a data frame to a CSV file. |
| `tidyverse` (`readr`) | [`write_delim()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/write_delim) | `write_delim(df, "file.txt", delim = ":")` | Writes a data frame to a delimited file. |
| `tidyverse` (`readr`) | [`write_rds()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_rds) | `write_rds(df, "file.rds")` | Saves a single R object to an RDS file. |
| `tidyverse` (`readr`) | [`read_rds()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_rds) | `df <- read_rds("file.rds")` | Reads a single R object from an RDS file. |
| Base R | [`save()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/save) | `save(df1, df2, file = "file.RData")` | Saves one or more R objects to an RData file. |
| Base R | [`load()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/load) | `load("file.RData")` | Loads R objects from an RData file into the environment. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).

\* Find more resources at https://daseh.org.
