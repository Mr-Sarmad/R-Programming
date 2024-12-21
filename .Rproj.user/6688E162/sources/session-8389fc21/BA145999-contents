### Using plotly library for making interactive plots
library(plotly)
library(tidyverse)
library(readxl)
# load the data
df<-read_excel("Data/titanic3.xls")


#scatter plot
plot_ly(df,x= ~age,y= ~fare,color=~sex,type="scatter",mode="markers",
        size=~fare
        )

#line plot
plot_ly(df,x= ~pclass,y= ~embarked,color=~sex,type="scatter",mode="lines")

#barplot
plot_ly(df,x= ~pclass,y= ~fare,color=~sex,type="bar",mode="markers")


# histogram
plot_ly(df,x= ~age,color=~sex,type="histogram",mode="markers")

#boxplot
plot_ly(df,x= ~pclass,y= ~fare,color=~sex,type="box",mode="markers")


#heatmap
plot_ly(df,x= ~pclass,y=~embarked,z= ~age,type="heatmap")

#pie chart
plot_ly(df,labels=~pclass,type="pie",)

#bubble chart
plot_ly(df,x= ~age,y= ~fare,color=~sex,size=~fare*type="scatter")
#voilon plot
plot_ly(df,x= ~age,y= ~fare,color=~sex,type="violin")

#3d scatter plot
plot_ly(df,x= ~age,y= ~fare,z=~pclass,color=~sex,type="scatter3d",mode="markers")
