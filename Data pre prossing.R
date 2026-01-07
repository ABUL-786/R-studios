library(dplyr)

#Create  data frame 
print("Table")
dataframe <- data.frame(
  name = c("Bhuvan","Abul","Basim","umar"),
  Physics = c(98,87,67,99),
  Chemistry = c(NA,89,65,45),
  Mathematics =c(91,86,NA,NA))

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
  Mathematics = ifelse(is.na(Mathematics ),medianMissing[2], Mathematics ))
print("after preprocessing")
print("---------------------")
print(newDataFrameMedian)