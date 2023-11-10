install.packages("tidyverse")  #install tidyverse
library(tidyverse)             #load tidyverse

gapminder = gapminder %>% filter(year == 1952)       #prepairing data frame a.k.a "tibble"
View(gapminder)

#####  HISTOGRAM
ggplot(data = distribucija_kontinenta, aes(x=continent, y=n)) + 
  geom_bar(stat = "identity", color="darkgoldenrod1", fill="chocolate4", linetype = "dashed") +   #modificira same stupove
  ggtitle("Distribucija zemalja po kontinentima") +
  xlab("kontinent") + ylab("broj zemalja") + 
  theme(panel.background = element_rect(fill = "cadetblue4"),          #modifikacija pozadine panela (područja na kojem graf stoji)
        panel.grid.major = element_blank(),                            #modificira major gridlines (i vertikalne i horizontalne)
        panel.grid.minor = element_blank(),                            #modificira minor gridlines (samo horizontalne crte)
        plot.background =  element_rect(fill = "darkslategrey"),       #modifikacija plota (prostor van grafa)
        plot.title = element_text(colour = "cornsilk", hjust = 0.5),   #modificira naslov (glavni title)
        axis.line = element_line(color = "chartreuse"),                #modificira x i y osi (da je axis.line.x onda bi samo x-os)
        axis.text = element_text(color = "yellow"),                    #modificira tekst na osima
        axis.title = element_text(color = "cyan"),                     #modificira naslove osi
        axis.ticks = element_line(color = "red", size = 1.1))  