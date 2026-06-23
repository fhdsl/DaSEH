---
classoption: landscape
urlcolor:blue
---

# Day 8 Cheatsheet

## Statistics

### Functions

|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`cor(x, y)`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/cor)|`cor(x, y)`| Calculate correlation of two vectors in R.|
| `corrplot`| [`corrplot(cor_mat)`](https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html)|`corrplot(cor_mat, type = "upper", order = "hclust")`| Create a correlation matrix plot.|
| Base `R`| [`t.test(x, y)`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test)|`t.test(x, y, alternative = "two.sided")`| Perform one and two sided t tests.|
| `broom`| [`tidy(x)`](https://broom.tidymodels.org/)|`tidy(t_test_result)`| Manipulates and tidies up wonky statistical R objects into nice data frames|
| Base `R`| [`wilcox.test(x, y)`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test)|`wilcox.test(x, y)`| Calculate non-parametric, Wilcoxon signed rank test, Wilcoxon rank sum test.|
| Base `R`| [`shapiro.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/shapiro.test)|`shapiro.test(x)`| Test for normality with Shapiro-Wilk. |
| Base `R`| [`ks.test()`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/ks.test)|`ks.test(x)`| Test for normality with Kolmogorov-Smirnov. |
| Base `R`| [`var.test(x, y)`](http://www.sthda.com/english/wiki/f-test-compare-two-variances-in-r)|`var.test(x, y)`| Compare two variances with Fisher's F-test |
| Base `R`| [`chisq.test(x, y)`](http://www.sthda.com/english/wiki/f-test-compare-two-variances-in-r)|`chisq.test(x, y)`| Perform chi squared contingency tables and goodness of fit tests |
| Base `R`| [`summary(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/summary)| summary(linear_model_result) | Returns a summary of the values in object, including a linear model or other statistical test. |
| Base `R`| [`glm(x ~ y)`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/glm)|`glm(x ~ y, data = df, family = binomial())`| Fit generalized linear models based on a formula you provide. Must specify the error distribution and link function using the `family` argument. |
| `epitools`| [`oddsratio(x,y)`](https://www.rdocumentation.org/packages/epitools/versions/0.5-10.1/topics/oddsratio)|`oddsratio(x,y)`| Calculates odds ratio.|

\pagebreak

## Data Output

### Functions

|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| `tidyverse` (`readr`)| [`write_csv()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/write_delim)| `write_csv(df, "file.csv")`| Writes a data frame to a CSV file at a specified path/location.|
| `tidyverse` (`readr`)| [`write_delim()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/write_delim)| `write_delim(df, "file.txt", delim = ":")`| Writes a data frame to a delimited file at a specified path/location.|
| `tidyverse` (`readr`)| [`write_rds()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_rds)| `write_rds(df, "file.rds")`| Saves a single R object to an RDS file.|
| `tidyverse` (`readr`)| [`read_rds()`](https://www.rdocumentation.org/packages/readr/versions/2.1.5/topics/read_rds)| `df <- read_rds("file.rds")`| Reads a single R object from an RDS file.|
| Base `R`| [`save()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/save)| `save(df1, df2, file = "file.RData")`| Saves one or more R objects to an RData file.|
| Base `R`| [`load()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/load)| `load("file.RData")`| Loads R objects saved in an RData file back into the environment.|

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
