library(worrrd)

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
pdf(file="puzzles/missing_data_cross_word.pdf")
plot(x, clues = TRUE, legend_size = 2)
dev.off()
