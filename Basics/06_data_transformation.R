## 1. import library
library(tidyverse)
library(readxl)
library(ggplot2)
library(dplyr)
##2. load datatset
df <- read_excel("Data/titanic3.xls")
## 3.  view data set
# basic function 
view(df)
str(df)
summary(df)
#dyplr
tibble(df)
summarise(df)
# find the mean using the dplyr 
df %>%
  group_by(age)%>%
  summarise(mean=mean(age,na.rm=TRUE))
# select only some columns
df_female <- df %>% filter(sex=="female")
# plot the data .
df %>% 
  filter(sex=="female")%>%
  ggplot(aes(x=fare))+geom_histogram()

### Sumaarize Case 
#Computes summary statistics for groups or the entire dataset.
df_summary <- df %>%
  summarise(avg = mean(pclass, na.rm = TRUE))
df_summary
# count :Counts the number of rows for each group, with options to sort or weigh the counts.
df_count <- df%>%
  count(pclass)
df_count
### Group classes
df_groupby <- df%>%
  group_by(avg=mean(age))
df_groupby
# rowwise 
df_rowwise <- df%>%
  rowwise(avg=mean(11))
df_rowwise
