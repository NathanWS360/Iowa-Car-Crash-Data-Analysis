# Importing the relevant datasets:
crashesperday_2019 <- read.csv("C:/Users/nws36/OneDrive/Desktop/Projects/Auto Crashes Project/Output Tables/crashes_per_day_2019_output.csv")
crashesperday_2020 <- read.csv("C:/Users/nws36/OneDrive/Desktop/Projects/Auto Crashes Project/Output Tables/crashes_per_day_2020_output.csv")
crashesperday_both <- read.csv("C:/Users/nws36/OneDrive/Desktop/Projects/Auto Crashes Project/Output Tables/crashes_per_day_both_output.csv")


# Checking assumptions:

# Normality:
qqnorm(crashesperday_2019$Total_Crashes, main = "Normal Q-Q Plot (2019 Data)")
qqline(crashesperday_2019$Total_Crashes)
qqnorm(crashesperday_2020$Total_Crashes, main = "Normal Q-Q Plot (2020 Data)")
qqline(crashesperday_2020$Total_Crashes) 
# Both groups fit the normality assumption well enough for our purposes.

# Equality of variances:
var.test(Total_Crashes ~ Year, data = crashesperday_both) 
# p = 0.0001252; we will need to perform a test with unequal variances.


# Performing the t-test:
t.test(Total_Crashes ~ Year, data = crashesperday_both, var.equal = FALSE) 
# p = 5.338 * 10^-16