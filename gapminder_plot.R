install.packages("gapminder")
library(gapminder)
data(gapminder)

summary(gapminder)
mean(gapminder$gdpPercap)
hist(lifeExp)
median(pop)

attach(gapminder)
median(pop)
hist(lifeExp)
hist(log(pop))
boxplot(lifeExp ~ continent)
plot(lifeExp ~ log(gdpPercap))

install.packages("dplyr")
library(dplyr)


lea <- gapminder %>%
  select(country, lifeExp) %>%
  filter(country == "South Africa" |
           country == "Ireland") %>%
  group_by(country) %>%
  summarise(Average_life = mean(lifeExp))
  
