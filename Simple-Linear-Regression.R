#Author: Tj Tyson, Date: Aug 28, 2025; Purpose: Test similar linear regression

# Get some dummy dataset
cars <- mtcars

# Scatter plot on training data
scatter.smooth(x=cars$mpg, y =cars$disp, main = "SpeedVSdistance")

#Calculate correlation value between mpg and disp
cor(cars$mpg, cars$disp)

# - dim() tells you the columns and rows the data has

# Split training and testing data for regression
training_data <- cars[1:16,] 
# - comma at end selects rows comma at beginning selects rows
test_data <- cars[17:32,]

# Build a regression model
regression_result <- lm(mpg ~ disp, data=training_data)
# lm means linear model

# Predict regression function on test data
prediction_result <- predict(regression_result, test_data)

#Results of prediction
actual_prediction_values <- data.frame(cbind(actuals=training_data$mpg, predicteds=prediction_result))


