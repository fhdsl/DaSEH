# Render a cleaned, combined cheatsheet to PDF

# Get contents
lines <- readLines("modules/cheatsheets/combined_cheatsheet.md")

# Remove all yaml blocks
repeat {
  yaml_markers <- which(lines == "---")
  if (length(yaml_markers) < 2)
    break # escape if already clean
  lines <- lines[-(yaml_markers[1]:yaml_markers[2])] # remove yaml --- and lines in between
}

# Only want one creditation line
Alexs <- which(
  lines == "\\* This cheatsheet format was adapted from Alex's Lemonade Stand materials [(source)](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets)."
)
lines[Alexs[1:length(Alexs) - 1]] <- "\\pagebreak"

# Write new .md
writeLines(lines, "modules/cheatsheets/combined_cheatsheet.md")

# Convert to pdf
rmarkdown::render(
  'modules/cheatsheets/combined_cheatsheet.md',
  output_dir = 'modules/cheatsheets',
  output_format = rmarkdown::pdf_document(
    pandoc_args = c('-V', 'classoption=landscape', '-V', 'urlcolor=blue')
  )
)
