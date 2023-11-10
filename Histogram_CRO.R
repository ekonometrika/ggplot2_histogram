install.packages("tidyverse")  #instaliraj paket tidyverse
library(tidyverse)             #učitaj tidyverse
library(gapminder)             #učitaj gapminder bazu 
gapminder

gapminder_negrupiran = gapminder %>% filter(year == 1952) %>% select(country, continent)      #priprema data frame-a
print(gapminder_negrupiran, n = 142)          #negrupirani podaci

gapminder_grupiran = gapminder_negrupiran %>% count(continent, sort = TRUE)
gapminder_grupiran                         #grupirani podaci - sada možemo kreirati histogram


##### Površinski grafikon grupiranih numeričkih podataka (tzv. histogram)----

ggplot(data = gapminder_grupiran, aes(x=continent, y=n)) + 
  geom_bar(stat = "identity", color="darkgoldenrod1", fill="chocolate4", linetype = "dashed") +   #modificira same stupove
  ggtitle("Distribucija zemalja po kontinentima") +
  xlab("kontinenti") + ylab("broj zemalja") + 
  theme(panel.background = element_rect(fill = "cadetblue4"),          #modifikacija pozadine panela (područja ispod samog grafa, tj. stupaca)
        panel.grid.major = element_blank(),                            #modificira major gridlines (i vertikalne i horizontalne)
        panel.grid.minor = element_blank(),                            #modificira minor gridlines (samo horizontalne crte)
        plot.background =  element_rect(fill = "darkslategrey"),       #modifikacija plota (prostor oko grafa)
        plot.title = element_text(colour = "cornsilk", hjust = 0.5),   #modificira (glavni) naslov 
        axis.line = element_line(color = "chartreuse"),                #modificira x i y osi (da je  axis.line.x onda bi modficirao samo x-os)
        axis.text = element_text(color = "yellow"),                    #modificira tekst na osima, odnosno modalitete varijable i pripadajuće frekvencije
        axis.title = element_text(color = "cyan"),                     #modificira naslove osi
        axis.ticks = element_line(color = "red", size = 1.1))          #modficira tzv. "crtice" na osima