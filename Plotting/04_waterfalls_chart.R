install.packages("waterfalls")
library(waterfalls)

# Data
data <- data.frame(
  category = c("Start", "Revenue", "Costs", "Taxes", "Profit", "End"),
  value = c(1000, 500, -300, -100, 200, 0)
)

# Calculate the ending value
data$value[nrow(data)] <- sum(data$value)

# Plot the waterfall chart
waterfall(values = data$value, labels = data$category)

