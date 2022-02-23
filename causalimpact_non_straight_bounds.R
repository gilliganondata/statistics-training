# The question: Why are the upper and lower bounds of the model not perfectly
# straight in the "original" plot, since the predictive value IS perfectly straight?

library(tidyverse)
library(CausalImpact)

set.seed(6750)

start_date <- Sys.Date() - 90 - 1
end_date <- Sys.Date() - 15 - 1
event_date <- Sys.Date() - 45 - 1

num_rows <- as.numeric(end_date - start_date + 1, units = "days")
low_change <- 200
high_change <- 500

# Generate Data
df <- tibble(date = seq(start_date, end_date, by = 1)) 

# Add base series
df$base_data <- rnorm(num_rows, mean = 1200, sd = 200) %>% round(0)

# Make a "change following intervention" version
df <- df %>% 
  mutate(sim_data = ifelse(date <= event_date, base_data, base_data + 500)) %>% 
  dplyr::select(-base_data)

# CausalImpact
ci_model <- CausalImpact(df,
                         pre.period = c(start_date, event_date - 1),
                         post.period = c(event_date, end_date))

plot(ci_model)
