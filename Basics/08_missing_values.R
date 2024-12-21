## 1 .Import Library
library(tidyverse)
library(readxl)
## 2. Import dataset
df<- read_csv("Data/titanic.csv")
View(df)

## 3. Find missing values
df%>% is.na()%>%colSums() %>% barplot()
# Percentage of missing values
df%>%
  summarise_all(~sum(is.na(.)/n()))
## removing missing values
df_clean_1<-df%>% drop_na()%>%
  is.na()%>%
  colSums()%>%
  barplot()

# remove the column dack
df_clean_2<-df%>% select(-deck)
## remove rows with missing values in embarked
df_clean_3<-df_clean_2%>% drop_na(Embarked)


##impute missing values of age 
df_clean_5<- df%>%
  mutate(age=ifelse(is.na(Age),mean(Age,na.rm=TRUE),Age))


## lets check 
df_clean_final%>% is.na()%>%colSums() 

 # lets do in one code
df_clean_final <-df %>% 
  select(-Cabin)%>%
  drop_na(Embarked)%>%
  mutate(age=ifelse(is.na(Age),mean(Age,na.rm=TRUE),Age))

## impute and replace embarked_town with mode
df_clean_final <-df_clean_final %>% 
  mutate(Embarked=ifelse(is.na(Embarked)|Embarked="",mode(Embarked,na.rm=TRUE),Embarked),
  (Embarked_town=ifelse(is.na(Embarked_town)|Embarked_town,mode(Embarked_town,na.rm=TRUE),Embarked_town)
   
   
### advance imputation
install.packages("mice")
library(mice)
df_imputed<-mice(df,m=5,maxit=50,method="pmm",speed=500)


plot(df)
