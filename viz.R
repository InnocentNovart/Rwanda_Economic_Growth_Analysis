# VIZUALIZATIONS

# Population over Time with Color-coded Consumer Spending
ggplot(data = rwanda, aes(x = rwanda$YEAR, y = rwanda$PPL, col = rwanda$CSP)) +
  geom_point() +
  ylab("Population") +
  xlab("Year") +
  ggtitle("Population Over Time with Color-coded Consumer Spending")

# GDP Over Time with Color-coded Consumer Spending
qplot(rwanda$YEAR, rwanda$GDP, data = rwanda, color = rwanda$CSP,
      xlab = "Year", ylab = "GDP (in Billion USD)") +
  ggtitle("GDP Over Time with Color-coded Consumer Spending")

# Exports Over Time with Color-coded Consumer Spending
ggplot(data = rwanda, aes(x = rwanda$YEAR, y = rwanda$EXP, col = rwanda$CSP)) +
  geom_line() +
  ylab("Exports (in Billion USD)") +
  xlab("Year") +
  ggtitle("Exports Over Time with Color-coded Consumer Spending")

# Consumer Spending and GDP Over Time with Color-coded GDP
ggplot(data = rwanda, aes(x = rwanda$YEAR, y = rwanda$CSP, col = rwanda$GDP)) +
  geom_line() +
  ylab("Consumer Spending (in Billion USD)") +
  xlab("Year") +
  ggtitle("Consumer Spending and GDP Over Time with Color-coded GDP")
