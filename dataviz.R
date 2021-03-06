install.packages("gapminder")
install.packages("ggplot2")
library(gapminder)
library(ggplot2)# data visualisation
library(gganimate)# animation
gapminder
dim(gapminder)# dimensions
str(gapminder)
#histogram/density plot 
ggplot(gapminder,aes(gdpPercap))+geom_histogram()
#dataset
#aesthetic-aes()
#geometry-geom()
#facet-subplots

#scatterplot
ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop))+
  geom_point(aes(color=continent),show.legend = FALSE)+
  scale_size(range = c(2,12))+
  scale_x_log10() +
  facet_wrap(continent~.)+
  labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  transition_time(year) +
  ease_aes('linear')
anim <- animate(p)
magick::image_write(anim, path="myanimation.gif")  


