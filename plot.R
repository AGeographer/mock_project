library(tidyverse)

ds <- read_csv("icerinks.csv")

g <-
  ggplot(data = ds) +
  geom_col(mapping = aes(x = year(date), y = open, fill = borough)) +
  labs(title = "",
       x = "",
       y = "")

print(g)
