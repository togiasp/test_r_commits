
#run once
#install.packages(c("dplyr", "data.table", "stringi", "usethis", "RCurl"))

library(dplyr)
library(data.table)
library(stringi)
library(usethis)

set.seed(1234)
dt <- data.frame(var1 = LETTERS,
                 var2 = 1:length(LETTERS),
                 var3 = runif(26))

dt %>%
  filter(var3 > 0.5) %>%
  mutate(letter_found = ifelse(grepl("A", var1), "Yes", "No")) -> out

fwrite(out, "test_out.tsv", sep = "\t", row.names = FALSE)


#some random comment
renv::snapshot()
usethis::use_github()