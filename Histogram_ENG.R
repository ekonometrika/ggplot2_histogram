install.packages("tidyverse")  #install tidyverse
library(tidyverse)             #load tidyverse
library(gapminder)
gapminder

gapminder_ungrouped = gapminder %>% filter(year == 1952) %>% select(country, continent)      #prepairing data frame a.k.a "tibble"
print(gapminder_ungrouped, n = 142)          #ungrouped data

gapminder_grouped = gapminder_ungrouped %>% count(continent, sort = TRUE)
gapminder_grouped                          #grouped data - now we can generate histogram

#####  HISTOGRAM
ggplot(data = gapminder_grouped, aes(x=continent, y= n)) + 
  geom_bar(stat = "identity", color="darkgoldenrod1", fill="chocolate4", linetype = "dashed") +   #modification of bars
  ggtitle("Number of countries by continent") +                        #naming a graph
  xlab("continent") + ylab("countries") +                              #naming x and y axis
  theme(panel.background = element_rect(fill = "cadetblue4"),          #modification of panel background (space behind bars)
        panel.grid.major = element_blank(),                            #modification of major gridlines (horizontal and vertical gridlines)
        panel.grid.minor = element_blank(),                            #modification of minor gridlines (horizontal gridlines)
        plot.background =  element_rect(fill = "darkslategrey"),       #modification of plot background 
        plot.title = element_text(colour = "cornsilk", hjust = 0.5),   #modification of main title
        axis.line = element_line(color = "chartreuse"),                #modification of axis lines
        axis.text = element_text(color = "yellow"),                    #modification of text and frequencies on axis
        axis.title = element_text(color = "cyan"),                     #modification of axis labels
        axis.ticks = element_line(color = "red", size = 1.1))          #modification of axis ticks
