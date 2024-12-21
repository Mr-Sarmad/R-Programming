## 1 packaegs
library(tidyverse)
install.packages("nycflights13")
library(nycflights13)
flights
df<-flights
str(df)
glimpse(df)
tibble(df)
# find the data sahpe 
dim(df)
# range of the year column 
range(df$year)
range(df$month)
range(df$day)
?flights


jan_2013<-filter(df, month==1)
df %>% filter(month==1)

jan<-filter(df,month==1,day==1,day==15)
# save this in csv
write_csv(jan_2013,"data/januaury_2013.csv")
# write iin xls 
library(writexl)
write_xlsx(jan,"data/januauary_2013.xlsx")
