library(GWalkR)
data("ChickWeight")
data("ToothGrowth")
data("iris")
data("BOD")
data("cars")
data("mtcars")


gwalkr(ToothGrowth)
gwalkr(iris)


library(readxl)
df<- read_excel("Data/titanic3.xls")
head(df)
gwalkr(df)
