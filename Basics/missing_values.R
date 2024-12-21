### 1.Missing Value
library(nycflights13)
flights
df<-flights
is.na(df)
sum(is.na(df))
# calculate the percentage 
nrow(df)
sum(is.na(df))/ nrow(df)*100
sum(is.na(df$dep_delay))
# find num of missing values in each column
colSums(is.na(df))
# plot these missing values 
library(tidyverse)
#df%>% is.na()%>% barplot() # take alot of memeory
df%>% is.na()%>% colSums%>%barplot()
# sav the plot
dev.copy(png,"output/missing_values.png")
