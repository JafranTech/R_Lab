# DATA TRANSFORMATION

install.packages("tidyverse")

library(tidyverse)

data(mpg)

View(mpg)

mpg_arrange <- mpg %>% arrange(displ)

View(mpg_arrange)

mpg_select <- mpg %>% select(displ, cty, hwy)

View(mpg_select)

data(diamonds)

diamonds_filter <- diamonds %>% filter(price > 2500)

View(diamonds_filter)

data(starwars)

starwars_new <- starwars %>%
  mutate(height_m = height/100)

View(starwars_new)
