library(tidyverse)
library(readxl)
library(plotly)
df<-read_excel("data/titanic3.xls")

# create a ggplot2 obj
plot<- ggplot(df,aes(x=age,y=fare))+geom_point();plot

ggplot(df,aes(x=age,y=fare,color=sex))+
  geom_point(aes(size=fare,shape=sex))+
  theme_minimal()

plot_2<-ggplot(df,aes(x=age,y=fare,color=sex))+
  geom_point(aes(size=fare,shape=sex))+
  theme_minimal()

ggplotly(plot_2)

plot_3<-ggplot(df,aes(x=sex,y=age,fill=sex))+
  geom_bar(stat = "identity")+
  theme_minimal();plot_3
ggplotly(plot_3)


#create a bar plot of avearage fare for sex column
plot_4<-df%>% group_by(sex)%>%summarise(mean_fare=mean(fare))%>%
  ggplot(aes(x=sex,y=mean_fare,fill=sex))+
  geom_bar(stat="identity")+
  theme_classic();plot_4
  
ggplotly(plot_4)
