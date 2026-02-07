#Regression Analysis:

# Installing and load necessary packages
# 'tidyverse' is for data manipulation
if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

# Loading the dataset
# Make sure the 'indy.fair.data.csv' file is in your working directory.
df <- read.csv('indy.fair.data.csv')

# Data Cleaning
# This is a simple approach for beginners.
df_cleaned <- na.omit(df)

# Creating a Linear Regression Model
sales_model <- lm(
  avg.monthly.sales.by.site ~ avg.mgr.tenure.months.by.site +
    avg.hrs.annual.training.per.employee.by.site +
    avg.satisfaction +
    avg.engagement,
  data = df_cleaned
)

# Printing a summary of the model
cat("--- Linear Regression Model Summary ---\n\n")
summary(sales_model)
