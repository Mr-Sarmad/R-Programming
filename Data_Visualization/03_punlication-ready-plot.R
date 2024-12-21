library(readxl)
library(tidyverse)
library(ggpubr)
libaray(plotly)
#load data
df<-read_excel("data/titanic3.xls")

#plot using ggpubr
gghistogram(df,x="age",
            add="mean",rug=TRUE,
            color="sex",fill="sex",
            palette=c('#00AFBB',"#E7B800")
            )

p1<-ggdensity(df,x="age",
            add="mean",rug=TRUE,
            color="sex",fill="sex",
            palette=c('#00AFBB',"#E7B800")
)
ggplotly(p1)

p2 <- ggboxplot(
  df,
  x = "sex",      # Categorical variable
  y = "age",      # Continuous variable
  add = c("mean", "jitter"),  # Add mean and jitter
  rug = TRUE,                # Add rug plot
  color = "sex",             # Color by sex
  fill = "sex",              # Fill by sex
  palette = c('#00AFBB', "#E7B800")
)

ggplotly(p2)
