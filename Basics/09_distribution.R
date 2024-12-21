# library pacakage
library(tidyverse)
library(readxl)
install.packages("moments")
library(moments)
df<-read_excel("Data/titanic3.xls")
view(df)
# draw a hostpgram
hist(df$age)

# draw a histogram with ggplot2 having 10 bins
ggplot(df,aes(x=age))+geom_histogram(bins=20)+
  theme_classic()

mean(df$age,na.rm=TRUE)
median(df$age,na.rm = TRUE)

A<-c(2,3,4,5,6,7,8,9,2222,000,555,4655232)
median(A)

## Data Distribution

#Normal Distribution
hist(df$age)
shapiro.test(df$age)
hist(df$fare)
shapiro.test(df$fare)

ggplot(df,aes(x=age))+geom_histogram(bins=50)+
  theme_classic()

ggplot(df,aes(x=fare))+geom_histogram(bins=50)+
  theme_classic()
# null hypothesis of shapiro wilk test
# HO: data is normally distributed p> 0.05 95% confidence level
# H1: data is not normally distributed p< 0.05 95% confidence level


# shapiro wilk test on age
x<-df$age
if(shapiro.test(x)$p.value>0.05){
  print("data is  normally distributed")
} else{
  print("data is not normally distributed")
}

# kurtosis and skewness
# Remove missing values
x <- na.omit(x)
# Check if the data has sufficient observations
if (length(x) < 3) {
  cat("Not enough data to compute skewness and kurtosis.\n")
} else {
  # Calculate skewness
  x_skewness <- skewness(x, na.rm = TRUE)
  x_kurtosis <- kurtosis(x, na.rm = TRUE)
  
  # Interpret skewness
  if (x_skewness > 0) {
    cat("The distribution is positively skewed.\n")
  } else if (x_skewness < 0) {
    cat("The distribution is negatively skewed.\n")
  } else {
    cat("The distribution is symmetric.\n")
  }
  
  # Interpret kurtosis
  if (x_kurtosis > 3) {
    cat("The distribution is leptokurtic (sharp peak).\n")
  } else if (x_kurtosis < 3) {
    cat("The distribution is platykurtic (flat peak).\n")
  } else {
    cat("The distribution is mesokurtic (normal peak).\n")
  }
}
# Density plot of age
ggplot(df,aes(x=age))+geom_density()+theme_classic()
# why we cant do same wtih catogerol columns 
ggplot(df,aes(x=sex))+geom_density()+theme_classic()
ggplot(df,aes(x=age))+geom_histogram()+theme_classic()

#count plot of class 
ggplot(df,aes(x=sex))+geom_bar()+geom_bar()+theme_classic()
#calculate the mean and Sd of age 
df %>%
  group_by(sex) %>%
  summarise(
    mean_age = mean(age, na.rm = TRUE),
    sd_age = sd(age, na.rm = TRUE)
  )
df%>%
  filter(sex=="male")%>%
  ggplot(aes(x=age))+geom_histogram()+theme_classic()

df %>%
  group_by(sex) %>%
  summarise(
    mean_age = mean(age, na.rm = TRUE),
    sd_age = sd(age, na.rm = TRUE)
  )%>%
  ggplot(aes(x=sex))+geom_bar()
  