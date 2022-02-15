

install.packages(c("dplyr", "data.table", "stringi"))

library(dplyr)
library(data.table)
library(stringi)


set.seed(1234)
dt <- data.frame(var1 = LETTERS,
                 var2 = 1:length(LETTERS),
                 var3 = runif(26))

dt %>%
  filter(var3 > 0.5) %>%
  mutate(letter_found = ifelse(grepl("A", var1), "Yes", "No"))







renv::snapshot()







