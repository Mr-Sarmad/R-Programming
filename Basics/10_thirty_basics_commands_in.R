#library Pacakages
library(readxl)
df<-read_excel("Data/titanic3.xls")
#1
View(df) # to view the df
# 
str(df) # to see the structure of the df
#3
summary(df) # to see the summary
#4 
dim(df) # to view the dimensions
# 5
head(df) # to view the top rows
#6
tail(df) # to view the tails
#7 
nrow(df) # no of rows
#8
ncol(df) # no of col
#9
colnames(df) # to see the names of column
rownames(df) # to see the names of row
#10
sapply(df,class) # to see the class of each column
class(df)
#11
levels(df$sex) # to see the levels of columns
# make sex as factors
df$sex<-as.factor(df$sex)
#12
sum(is.na(df)) # to calclute the missing values
#13
colSums(is.na(df)) # to calcluate the missing values in each colmn iin data 
#14
sum(duplicated(df)) # to see the duplicates
#15
subset(df,pclass==1)# to subset the dataframe based on the condition
#16
sort(df$age) # to sort the df
min(df$age,na.rm=TRUE)# to see the minimum value
#17
df[order(df$age),]# to sort thethe dataframe based on the specific column
#18
mean(df$age,na.rm=TRUE) # to see the median
#19
median(df$age,na.rm=TRUE) # to see the median
# 20.
sd(df$age, na.rm=TRUE) # to see the standard deviation
#21
se<-sd(df$age,na.rm=TRUE)/sqrt(nrow(df))# to see the standard error
#22
quantile(df$age,na.rm=TRUE)# to seethe quantiles
#23
range(df$age,na.rm=TRUE)# to see the range
## catogorical frequencies
#24
table(df$pclass) # to see the frequency of each class
table(df$sex)
#25
length(df)# to see the lenght of df
length(df$sex)


length(unique(df$sex))# to see the number of nuique 


# 27
prop.table(table(df$pclass))# to see the proportion of each calss columns
# find the precent
prop.table(table(df$pclass))*100
# 28 
cor(df$age,df$fare,use="complete.obs")# to see the correlation between two rows
#29
hist(df$age)# to see the histogram
# 30
boxplot(df$age)# to see the boxplot 
