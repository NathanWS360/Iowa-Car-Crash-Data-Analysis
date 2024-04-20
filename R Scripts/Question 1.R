# Importing relevant dataset
rate_by_year <- read.csv("C:/Users/nws36/OneDrive/Desktop/Projects/Auto Crashes Project/Output Tables/crash_rate_by_year_output.csv")

# Building model and summarizing
rate_by_year_model <- lm(Crash_Rate ~ Year, data = rate_by_year)
summary(rate_by_year_model)

# Creating scatterplot
plot(rate_by_year$Year, rate_by_year$Crash_Rate, 
     main = "Annual Car Crashes per Capita Over Time",
     xlab = "Year", ylab = "Car Crashes per Capita", pch = 19)