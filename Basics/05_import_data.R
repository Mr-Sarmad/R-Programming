## 1. Readr package
library(readr)
titanic <- read_csv("Data/titanic.csv")
View(titanic)
## 2.readxl
library(readxl)
titanic3 <- read_excel("Data/titanic3.xls")
View(titanic3)
