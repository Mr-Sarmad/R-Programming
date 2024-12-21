install.packages("ggpubr")
library(ggpubr)
library(tidyverse)



# Sample Data
df <- data.frame(
  specie = c(rep("sorgho", 3), rep("poace", 3), rep("banana", 3)),
  condition = rep(c("normal", "stress", "nitrogen"), 3),
  value = abs(rnorm(9, 0, 15))
)

# Clean and Ensure No Duplicate Factor Levels
df$condition <- trimws(df$condition)  # Remove extra spaces
df$condition <- factor(df$condition, levels = unique(df$condition))

# Create the Bar Plot
ggbarplot(
  df,
  x = "specie",
  y = "value",
  fill = "condition",
  color = "white",
  palette = "jco",
  sort.val = "desc",
  sort.by.groups = FALSE,
  x.text.angle = 90
)

