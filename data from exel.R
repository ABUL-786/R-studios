library(dplyr)

#Create  data frame
print("Table")
dataframe <- read.csv("Z:\\Data Mining\\Exercise 1\\BOOK 1.csv",sep=",")

#Print dataframe
print(dataframe)
print("before preprocessing")
print("---------------------")
#find the columns names having at least one NA value 

listMissingColumns <- colnames(dataframe)[apply(dataframe, 2, anyNA)]

#compute the mean and medianof the coresponding columns 

meanMissing <- apply(dataframe[,colnames(dataframe) %in% listMissingColumns],
                     2 , mean, na.rm = TRUE)

medianMissing <- apply(dataframe[,colnames(dataframe) %in% listMissingColumns],
                       2 , mean, na.rm = TRUE)

#let's fill the NA values with median of the corresponding column.
newDataFrameMedian <- dataframe %>% mutate(
  Chemistry = ifelse(is.na(Chemistry),medianMissing[1], Chemistry),
  Maths = ifelse(is.na(Maths ),medianMissing[2], Maths ))
print("after preprocessing")
print("---------------------")
print(newDataFrameMedian)
write.csv(newDataFrameMedian,"Z:\\Data Mining\\Exercise 1\\BOOK 1.csv",row.names=FALSE)