#librarries
library(tidyverse)
library(readxl)
install.packages("svglite")
library("svglite")
# load the data
df<- read_excel("Data/GHgs.xlsx")
unique_crop_types <- df %>% pull(crop.type) %>% unique()
length(unique_crop_types)# This will show the number of unique crop types

df <- read_excel("Data/GHgs.xlsx")
df %>%
  group_by(crop.type) %>%
  summarise(counts = n()) %>%
  ggplot(aes(crop.type, counts, fill = crop.type)) +
  geom_bar(stat = "identity") +
  xlab("Crop Type") +
  ylab("Number of Observations") +
  theme_classic() +
  scale_fill_manual(values = c('#999999', '#E69F00', '#56B4E9', 'red', 'blue', 'green', 'orange', '#D55E00', '#CC79A7')) +
  scale_fill_brewer(palette = "Set3")+
  theme(
    text = element_text(size = 20),
    axis.text = element_text(angle = 90, hjust = 1)
  )


  ggsave("plots/02_plot.png", scale = 1, height = 8, width = 6, dpi = 300)
  
