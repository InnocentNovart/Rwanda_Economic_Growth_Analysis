# file name is init.R
# This sample R code is used to install packages and initialize R
my_pckgs <- c("readxl", "ggplot2", "ggpubr", "GGally")

install_if_missing <- function(p) {
  if (!(p %in% rownames(installed.packages()))) {
    install.packages(p)
  }
}

invisible(sapply(my_pckgs, install_if_missing))



# IMPORTING AND READING OUR DATA
rwanda <- read_excel("Rwanda Data (1).xlsx")
head(rwanda)
