---
title: "Day 7 Cheatsheet"
classoption: landscape
urlcolor: blue
output: pdf_document
---

## Data Visualization

### Major concepts

- **`tidyverse` (`ggplot2`):** Produces graphics.
- **Tidy data:** Each variable is a column, and each observation is a row.
  - Having data in tidy format and long format makes creating plots easier!
- **Plot layers:** Use `+` at the end of each line when adding layers to plots.
- **Pipes:** `|>` and `%>%` do not add plot layers, but they can pipe data into plots.
  - **Works:** `ggplot(data = iris, aes(x = Species, y = Petal.Length)) + geom_boxplot()`
  - **Works:** `iris |> ggplot(aes(x = Species, y = Petal.Length)) + geom_boxplot()`
  - **Does not work:** `iris |> ggplot(aes(x = Species, y = Petal.Length)) |> geom_plot()`

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|-----------------|---------------|------------------|--------------|
| `tidyverse` (`ggplot2`) | [`ggplot()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/ggplot) | `ggplot(data = iris)` | Begins a plot that is finished by adding layers. |
| `tidyverse` (`ggplot2`) | [`aes()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/aes) | `ggplot(data = iris, aes(x = Species, y = Petal.Length))` | Maps variables to visual properties in a `ggplot()` object. |
| `tidyverse` (`ggplot2`) | [`geom_boxplot()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_boxplot) | `ggplot(data = iris, aes(x = Species, y = Petal.Length)) +` \newline `geom_boxplot()` | Creates a boxplot when added as a layer to a `ggplot()` object. |
| `tidyverse` (`ggplot2`) | [`geom_density()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_density) | `ggplot(data = iris, aes(x = Petal.Length)) +` \newline `geom_density()` | Creates a smoothed density plot when added as a layer to a `ggplot()` object. |
| `tidyverse` (`ggplot2`) | [`geom_point()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_point) | `ggplot(data = iris, aes(x = Species, y = Petal.Length)) +` \newline `geom_point()` | Creates a scatterplot when added as a layer to a `ggplot()` object. |
| `tidyverse` (`ggplot2`) | [`geom_line()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/geom_path) | `ggplot(data = iris, aes(x = Species, y = Petal.Length)) +` \newline `geom_line()` | Creates a line plot by connecting points in order of the x-axis variable. |
| `tidyverse` (`ggplot2`) | [`geom_hline()`](https://www.rdocumentation.org/packages/ggplot2/versions/0.9.0/topics/geom_hline) | `ggplot(data = iris, aes(x = Species, y = Petal.Length)) +` \newline `geom_point() +` \newline `geom_hline(yintercept = 4)` | Adds horizontal lines to a plot. |
| `tidyverse` (`ggplot2`) | [`theme_classic()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/ggtheme) | `ggplot(data = iris, aes(x = Petal.Length)) +` \newline `geom_density() +` \newline `theme_classic()` | Displays a `ggplot()` object without grid lines. See the [`ggtheme` documentation](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/ggtheme) for additional themes. |
| `tidyverse` (`ggplot2`) | [`xlab()`; `ylab()`; `ggtitle()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/labs) | `ggplot(data = iris, aes(x = Petal.Length)) +` \newline `geom_density() +` \newline `xlab("Petal Length")` | Modifies the x-axis label, y-axis label, and plot title, respectively. |
| `tidyverse` (`ggplot2`) | [`facet_grid()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/facet_grid) | `ggplot(data = iris, aes(x = Petal.Length)) +` \newline `geom_density() +` \newline `facet_grid(~Species)` | Creates a grid of plots using specified variables to subset the data. |
| `tidyverse` (`ggplot2`) | [`facet_wrap()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/facet_wrap) | `ggplot(data = iris, aes(x = Petal.Length)) +` \newline `geom_density() +` \newline `facet_wrap(~Species, scales = "free", nrow = 2)` | Creates individual plots using specified variables to subset the data, with flexible layouts and axis scales. |
| `tidyverse` (`ggplot2`) | [`ggsave()`](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.0/topics/ggsave) | `ggsave(filename = "plotname.pdf")` | Saves the last plot in the working directory. |

_NOTE:_ Click [here](https://github.com/claragranell/ggplot2/blob/main/ggplot_theme_system_cheatsheet.pdf) for a summary of the `ggplot2` theme system.

\pagebreak

## Factors

### Major concepts

- **Factor:** A special character vector whose elements have predefined groups, or levels. Factors are useful for qualitative or categorical variables, such as grade levels. Specify factors with the `factor` function so R recognizes them correctly.

### Functions

| Library/Package | Piece of code | Example of usage | What it does |
|----|-----|--------|--------|
| Base R | [`factor()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/factor) | `fact_qual <- factor(c("poor", "fine", "good"))` | Creates a factor from a vector. Levels are ordered alphanumerically by default. |
| Base R | [`levels()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/levels) | `levels(fact_qual)` | Shows the levels and order of a factor vector. |
| `tidyverse` (`forcats`) | [`as_factor()`](https://forcats.tidyverse.org/reference/as_factor.html) | `fact_qual <- as_factor(c("poor", "fine", "good"))` | Creates a factor from a vector. Levels are ordered by first appearance in the data by default. |
| `tidyverse` (`forcats`) | [`fct_reorder()`](https://forcats.tidyverse.org/reference/fct_reorder.html) | `ggplot(iris, aes(x = fct_reorder(Species, Sepal.Width, mean), y = Sepal.Width)) +` \newline `geom_boxplot()` | Reorders factor levels according to another variable. Here, `Species` is ordered by the mean of `Sepal.Width`. |

\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
