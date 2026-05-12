# Render modules

# --------- Check Files ---------

option_list <- list(
  optparse::make_option(
    c("--files"),
    type = "character",
    default = NULL,
    help = "files that have been changed",
  )
)

# Read the files argument
opt_parser <- optparse::OptionParser(option_list = option_list)
opt <- optparse::parse_args(opt_parser)
files <- opt$files

if (files == "all"){
  # If no argument supplied, do all
  files <- list.files(recursive = T)
}

# Split files up if multiple
files <- stringr::str_split(files, " ")
if (class(files) == "list")
  files <- unlist(files)

# Keep only Rmds
files <- files[grepl("[.]Rmd$", files)]

# --------- Render ---------

# Lecture files are everything else in modules
lecture_files <-
  files[grepl("modules/.*", files) &
          !grepl("modules/.*/lab", files)]
message("The following lecture files will be rendered:")
if (length(lecture_files) != 0)
  print(lecture_files) else
  print("(no changes, so no rendering needed)")
readr::write_csv(data.frame(files = lecture_files), "lecture_files.csv")

# loop thru and render all lecture files to pptx
# Specific module name will be pulled out based on the dir name in modules/

if (length(lecture_files) != 0) {
  for (i in 1:length(lecture_files)) {
    module_name <-
      stringr::str_split(lecture_files, pattern = '/')[[i]][2]
    rmarkdown::render(
      lecture_files[i],
      output_format = rmarkdown::powerpoint_presentation(
        reference_doc = "../../docs/DaSEH_slide_template.pptx", 
        slide_level = 2),
      output_dir = paste0("modules/", module_name),
      envir = new.env()
    )
  }
}
