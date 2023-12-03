# CORRELATION ANALYSIS

# Analyzing the correlation between GDP and Exports
## Correlation Coefficient
Cor.Coef1 <- cor(rwanda$GDP, rwanda$EXP, method = "pearson")

## Correlation plot
ggscatter(rwanda, x = "GDP", y = "EXP", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "GDP in Billion USD", ylab = "Exports in Billion USD") +
  ggtitle("Correlation Between GDP and Exports")

## Correlation test
Cor.test1 <- cor.test(rwanda$GDP, rwanda$EXP, method = "pearson")

## Shapiro Normality test
SHAPIRO_GDP <- shapiro.test(rwanda$GDP)
SHAPIRO_EXP <- shapiro.test(rwanda$EXP)
SHAPIRO_GDP
SHAPIRO_EXP

# Analyzing the correlation between Population and Consumer Spending
## Correlation Coefficient
Cor.Coef2 <- cor(rwanda$CSP, rwanda$PPL, method = "pearson")

## Correlation plot
ggscatter(rwanda, x = "CSP", y = "PPL", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Consumer spending in Billion USD", ylab = "Population") +
  ggtitle("Correlation Between Consumer Spending and Population")

## Correlation test
Cor.test2 <- cor.test(rwanda$CSP, rwanda$PPL, method = "pearson")

## Shapiro Normality test
SHAPIRO_csp <- shapiro.test(rwanda$CSP)
SHAPIRO_PPL <- shapiro.test(rwanda$PPL)
SHAPIRO_csp
SHAPIRO_PPL

## Correlation coefficient and Correlation test summary
ggpairs(rwanda[c("PPL", "GDP", "EXP", "CSP")]) +
  ggtitle("Correlation Coefficient and Correlation Test Summary")
