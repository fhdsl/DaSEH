library(worrrd)
library(dplyr)
library(kableExtra)
library(grid)
library(gridExtra)

# Simple wordsearch
words <- c("alligator", "crocodile", "squirrel", "swordfish", "german shepherd", "panda", "wolf")
x <- wordsearch(words, r = 20, c = 20)


png(file="puzzles/answers_search_ex.png")
plot(x, solution = TRUE, title = "Example Answers")
dev.off()

pdf(file = "puzzles/example_search.pdf")
plot(x, solution = FALSE, title = "Example")
dev.off()


## crossword function
words <- row.names(state.x77)
clues <- paste0(state.region, " state covering ", scales::comma(state.x77[, "Area"]), " square miles.")
x <- crossword(words, clues, r = 40, c = 40)
plot(x, clues = TRUE, legend_size = 2)

raw_func_info <- readRDS(file = "resources/raw_all_func_forpuzzles.rds")

words <- raw_func_info$`./modules/R_files/Data_Cleaning.R`$`package:naniar`
x <- wordsearch(words, r = 20, c = 20)


pdf(file="puzzles/missing_data_search_answers.pdf")
plot(x, solution = TRUE, title = "Missing Data Answers")
dev.off()

pdf(file="puzzles/missing_data_search.pdf")
plot(x, solution = FALSE, title = "Missing Data")
dev.off()

cheatsheet_func_info <- read_csv(file = "resources/all_the_functions.csv")

cheatsheet_func_info %>% filter(package == "naniar")
words <- cheatsheet_func_info %>% filter(package == "naniar")%>% pull(func)
clues <- cheatsheet_func_info %>% filter(package == "naniar") %>% pull(description)
x <- crossword(words, clues, r = 40, c = 40)
pdf(file="puzzles/missing_data_cross_word.pdf", width = 15)
plot(x, clues = TRUE)
dev.off()

pdf(file="puzzles/missing_data_cross_word.pdf", width = 15)
plot(x, clues = TRUE)
dev.off()
clues <- tibble("clue" = clues) 
clues <- clues %>% mutate(id = row_number()) 
#clues <- clues %>% mutate(clue = 
#        str_replace_all(string = clue, pattern = "[.]", ".\n"))
clues_tab <- kbl(clues)
table_grob <- tableGrob(clues_tab)
pdf(file="puzzles/missing_data_cross_word2.pdf", width = 15)
grid.arrange(plot(x), table_grob, ncol = 1, heights = c(3,3))
dev.off()
