

install.packages('dplyr')
install.packages('tidyr')
library(dplyr)
library(tidyr)

activity_clean <- activity %>% group_by(interval) %>% mutate(steps= ifelse(is.na(steps), mean(steps, na.rm = T), steps))
activity
