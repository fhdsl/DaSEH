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
      file.path(here::here("modules", topic)),
      pattern = "\\.pdf$",
      full.names = TRUE
    )
  })
)

pdf_combine(pdf_files, output = here::here("resources/course_notes.pdf"))
