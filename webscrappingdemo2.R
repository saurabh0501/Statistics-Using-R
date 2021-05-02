install.packages("robotstxt")
library(robotstxt)
library(xml2)
library(dplyr)
library(tidyr)
library(lubridate)
library(stringr)
library(rvest)
library(purrr)


link = 'https://www.allsides.com/media-bias/media-bias-ratings'

paths_allowed(paths = link)

allsides <- read_html(link)

print(allsides)

test <- html_nodes(allsides,'.views-field-title a') %>%
  html_text() -> title


#I was trying to get the individual rating using the alt attribute
all_slides_rating<-html_nodes(allsides,'.views-field') %>%
html_nodes('img')%>%
  html_attr("alt")  

#But instead of the whole list,I was able to only get the first element of the list


#Also I was trying to get the individual media names
all_slides_media_names<-html_nodes(allsides,'.views-field-title a') %>%
  html_nodes('img')%>% 
  html_attr("alt") 
#But instead of the whole list,I was able to only get the first element of the list

#The idea was to get the lists and join them together to for a news,media and rating combination