install.packages("tidyverse")

library(tidyverse)

data(mpg)

mpg_arrange1 <- mpg %>% arrange(displ)
View(mpg_arrange1)

mpg_select1 <- mpg %>% select(displ, cty, hwy)
View(mpg_select1)

data(diamonds)

diamonds_filter1 <- diamonds %>% filter(cut == 'Ideal')
View(diamonds_filter1)

Country_Name <- c('Qatar', 'United States', 'Germany', 'Canada', 'United Kingdom')
Y2009 <- c(59094, 47099, 41732, 40773, 38454)
Y2010 <- c(67403, 48466, 41785, 47450, 39080)
Y2011 <- c(82409, 49883, 46810, 52101, 41652)

gdp <- data.frame(Country_Name, Y2009, Y2010, Y2011)

gdp_gather <- gdp %>% gather("Year", "GDP" , 2:4)

View(gdp_gather)
