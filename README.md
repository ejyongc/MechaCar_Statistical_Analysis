# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
From our *linear regression* summary results we can see that the *vehicle_length* and *ground_clearance* variables provided a non-random amount of variance. 
![image](Del 1)

2. Is the slope of the linear model considered to be zero? Why or why not?
No, the slope of the linear model has proven not to be zero since we wer able to reject the null hypothesis. The p-value of the our linear model is *5.35xe-11* which is lower than our significance level of *0.05%*.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Based on the results we can conlude that the linear regresion model could be used to predict mpg on the prototypes. The *r-squared* value of 0.7149 represents a *strong* correlation between the indepedent values and the dependent value, while the accumulated *p-value* value of 5.35e-11 allows us to reject the null hypothesis and remain significant. 

We'd like to note that althpugh this linear model could be used to predict mpg on future prototypes, it's important to declare that *vehicle_length & ground_clearance* are the variables with the largest statistically significance in regards to mpg. 

## Summary Statistics on Suspension Coils

1. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When reviewing the cummulative total summary we can see that the sample data does meet this design specifications for all manufacturing lots with an variance of 63.29356
![image](Del 2)

It's important to note that when segmenting this data, we can identify that *Lot 3* exceeds the 100 pounds per square inch required per its design specifications. Lot 3 variance is 170.2861224 and it doesn't meet the required standards. 
![image](Del 2)


## T-Tests on Suspension Coils
From the cumulative t.test we have a *p-value* of 0.6028 which fails to reject the null hypothesis. 
From the three independent t.tests we can identify the following p-values: 
- Lot 1: 1
- Lot 2: 0.6072
- Lot 3: 0.04168

With this study we can identify that *Lot 3* has a p-value of 0.04168 that helps reject the null hypothesis. With this we can conclude that the PSI on *Lot 3* is statistically different from the population mean of 1,500 pounds per square inch. 

![image](Del3)

## Study Design: MechaCar vs Competition
On an additional market study, we could run an linear regression to project the maintenance cost for the people who are considering purchasing a *MechaCar* vs other brands. 

* For this study, we'd measure the *recommended_timespam* of parts as well as the *part_cost* in order to determine the accumulated cost across the years of ownership. 
* The alternative hypothesis could state that there a significant differnce between the cost of ownership from owning a MechaCar vs other brands. 
* We'd run a two-sample t-test in order to determine if there's an statistical difference between the distribution means of the samples. 
* In order to run the statistical test we'd need comprehensive parts data (cost of replacement, lifespam, recommended usage, recommended maintance guidelines, etc.) This data will allow us to project the maintenance cost for a vehicle versus other brands. 
