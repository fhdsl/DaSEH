library(qpdf)
### make combined slides file
topic_order <- c(
  "Intro",
  "Basic_R",
  "Rstudio",
  "Reproducibility",
  "Data_Input",
  "Subsetting_Data_in_R",
  "Data_Classes",
  "Data_Cleaning",
  "Manipulating_Data_in_R",
  "Esquisse_Data_Visualization",
  "Data_Visualization",
  "Factors", 
  "Statistics", 
  "Data_Output",
  "Functions"
)

pdf_files <- unlist(
  lapply(topic_order, function(topic) {
    list.files(
      file.path("modules", topic),
      pattern = "\\.pdf$",
      full.names = TRUE
    )
  })
)

pdf_combine(pdf_files, output = "resources/course_notes.pdf")

### make combined cheatsheet file

# Find all PDFs in cheatsheets 
pdf_files <- list.files(
  path = "modules/cheatsheets",
  pattern = "\\.pdf$",
  recursive = FALSE,
  full.names = TRUE
)

# Combine into a single PDF
pdf_combine(
  input = pdf_files,
  output = "resources/all_cheatsheets.pdf"
)

