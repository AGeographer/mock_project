library(tidyverse)
ds %>%
  group_by(borough = ARRONDISSEMENT, date = date(DATE_TRS)) %>%
  summarise(open = sum(OUVERT) %>% as.integer(),
            cleaned = sum(DÉBLAYÉ) %>% as.integer(),
            watered = sum(ARROSÉ) %>% as.integer(),
            resurfaced = sum(RESURFACÉ) %>% as.integer()) %>%
  write_csv("icerinks.csv")
