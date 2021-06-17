# Install Packages
install.packages("jsonlite")
install.packages("tidyverse")

# DELIVERY 1

# 3.Use the library() function to load the dplyr package.
library(dplyr)

# review read.csv() function
?read.csv()

# 4.Import and read in the MechaCar_mpg.csv file as a dataframe. 
MechaCar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Review the MechaCar data
head(MechaCar_data)

# Review the lm() function
?lm()

# 5.Perform linear regression using the lm() function. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data))


# DELIVERY 2 

# Import and read in the Suspension_Coil.csv file as a table
suspension_data <- read.csv(file='Suspension_Coil.csv')

# Review the suspension_data
head(suspension_data)

# Review summarize() 
?summarize()

# 3.Write an RScript that creates a total_summary dataframe using the summarize() function
summary_table <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI),.groups = 'keep') #create summary table

# 4.Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot. 
summary_table <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI),.groups = 'keep') #create summary table


# DELIVERY 3 
# explore the t.test() funaction
?t.test()

# write an RScript using the t.test() function.
t.test(suspension_data$PSI,mu=1500)

# explore the subset() function
?subset()

# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
# 1. create the population 
pop_1 <- subset(suspension_data,Manufacturing_Lot=='Lot1')
pop_2 <- subset(suspension_data,Manufacturing_Lot=='Lot2')
pop_3 <- subset(suspension_data,Manufacturing_Lot=='Lot3')

# 2. run the t.test population
t.test(pop_1$PSI,suspension_data$PSI,mu=1500)
t.test(pop_2$PSI,suspension_data$PSI,mu=1500)
t.test(pop_3$PSI,suspension_data$PSI,mu=1500)






