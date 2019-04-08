library(tidyverse)

set.seed(617)

ga_data <- data.frame(time_period = seq(as.Date("2018-09-09"), as.Date("2018-10-27"), by = "day"),
                      sessions = rep(c(5000, 22750, 24000, 24250, 24000, 23000, 5750),7))

ga_data$sessions <- ga_data$sessions + runif(49, 1, 1500) %>% round()


ggplot(data = ga_data, mapping=aes(x=time_period, y = sessions)) +
         geom_line() +
  scale_y_continuous(limits = c(0,27000)) +
         theme_light()
