# Importing the dataset
data <- read.csv("http://bit.ly/w-data")

# Viewing the structure of the dataset
str(data)

# Scatter plot to visualize the relationship between study hours and percentage
plot(data$Hours, data$Scores, main = "Study Hours vs Percentage", 
     xlab = "Hours Studied", ylab = "Percentage Scored", col = "blue", pch = 19)

# Fitting the linear regression model
model <- lm(Scores ~ Hours, data = data)

# Summary of the linear regression model
summary(model)

# Predicting percentage for a given study hours
predicted_percentage <- predict(model, data.frame(Hours = 9.25))
print(paste("Predicted percentage for 9.25 hours of study:", predicted_percentage))#