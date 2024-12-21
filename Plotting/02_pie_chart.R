#librarries
library(tidyverse)
library(readxl)
# load the data
df<- read_excel("Data/GHgs.xlsx")
# pie chart
crop_counts<-table(df$crop.type)
crop_counts
pie(crop_counts,
    labels = paste(names(crop_counts),round(prop.table(crop_counts)*100,1),"%"),
    col=c("#ff9999","#66b3ff","#99ff99","#ffcc99","#c2c2f0","#ffb3e6","#c4e17f"),
    main="crop Distibution")
    theme(text=element_text(size=20),
          axis.text =element_text(angle = 45,hjust=1))
                   

  
# same plot with ggplot2
df%>%
  count(crop.type)%>%
  ggplot(aes(x="",y=n,fill=crop.type))+
  geom_bar(stat="identity",width=1)+
  coord_polar("y",start=0)+
  theme_void()
