# REGRESSION ANALYSIS

# Regression between GDP and Exports
Reg <- data.frame(rwanda$GDP, rwanda$EXP)
model <- lm(rwanda$GDP ~ rwanda$EXP, data = Reg)

## Model Summary
summary(model)

## Interpretation
# The overall f-statistic of the model is 539.4, and the corresponding p-value is less than 2.2e-16.
# This indicates that the overall model is statistically significant.

# Intercept: The theoretical value of Exports if GDP equals 0.
# If GDP equals 0, then Exports will be equal to 1.1050 Billion USD as obtained from the model.

# Slope: The change in Exports if GDP increases by 1.
# If GDP increases by 1, Exports will increase by 4.9495 Billion USD as obtained from the model.

## Visualization
library(ggplot2)
ggplot(model, aes(x = rwanda$GDP, y = rwanda$EXP)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Regression Between GDP and Exports")

# Regression between Population and Consumer Spending
Reg2 <- data.frame(rwanda$PPL, rwanda$CSP)
model2 <- lm(rwanda$PPL ~ rwanda$CSP, data = Reg2)

## Model Summary
summary(model2)

## Visualization
ggplot(model2, aes(x = rwanda$GDP, y = rwanda$EXP)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Regression Between Population and Consumer Spending")
