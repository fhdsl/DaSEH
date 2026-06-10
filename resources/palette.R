# Script to create color palette
library(tidyverse)

# Break data down into grid
r_colors <-
  data.frame(
    COLOR = colors(),
    COL = rep(seq(1, 9), each = 73),
    ROW = rep(seq(1, 73), times = 9)
  )

# Get RGB values to help with label coloring, stick into the data frame
r_colors <- 
  cbind(r_colors, 
        map_dfr(map(r_colors$COLOR, col2rgb), ~ as.data.frame(t(.x))))

# Black label if the color is lighter
r_colors <-
  r_colors |>
  mutate(label_color = case_when(red + blue + green > 510 ~ "black", TRUE ~ "white"))

# Make the palette
ggplot(r_colors, aes(x = COL, y = ROW)) +
  geom_tile(fill = r_colors$COLOR) +
  scale_fill_manual(values = r_colors$COLOR) +
  geom_text(aes(label = COLOR),
            color = r_colors$label_color,
            size = 3) +
  theme_void() +
  theme(legend.position = "none")

# Save
ggsave("resources/palette.jpg", height = 10, width = 11)
