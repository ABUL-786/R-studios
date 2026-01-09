#Create a data set and do analysis on the data using R

#Create a database
set.seed(123)#setting seed for repoducibility
height <-rnorm(50,mean=170,sd =10)
weight <-rnorm(50,mean=170,sd =5)

#combine variable into a dataframe
my_data <- data.frame(Height = height ,Weight = weight)

#Display the first few rows of the dataset
print("First Few Rows of Dataset:")
print(head(my_data))

#Discriptive saatistics
print("Discriptive saatistics")
print(summary(my_data))

#T-test for compating means of 'Height' between two groups
group1 <- my_data$Height[1:25]
group2 <- my_data$Height[26:50]
t_test_result <- t.test(group1,group2)
print("T-test for camparing means of 'Height' between two groups:")
print(t_test_result)
