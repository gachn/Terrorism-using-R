india=read.csv("IndiaTerrorism.csv");
library(leaflet)
library(dplyr)
mapIndia <- leaflet() %>% 
  addTiles('http://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
           attribution='Map tiles designed by  Gaurav Chauhan') %>%
  setView(80, 22, zoom= 4)

TerrorMapIndia = mapIndia %>% addCircles (data=india, lat= ~latitude, lng = ~longitude, 
                                    popup=paste(
                                      "<strong>Year: </strong>", india$iyear,
                                      "<br><strong>Killings: </strong>", india$nkill,
                                      "<br><strong>City: </strong>", india$city, 
                                      "<br><strong>Country: </strong>", india$country_txt, 
                                      "<br><strong>Attack type: </strong>", india$attacktype1_txt, 
                                      "<br><strong>Target: </strong>", india$targtype1_txt, 
                                      " | ", india$targsubtype1_txt, " | ", india$target1, 
                                      "<br><strong>Weapon: </strong>", india$weaptype1_txt, 
                                      "<br><strong>Group: </strong>", india$gname, 
                                      "<br><strong>Motive: </strong>", india$motive, 
                                      "<br><strong>Summary: </strong>", india$summary),
                                    weight = ifelse(india$iyear < 1990, 2,ifelse(india$iyear < 2000, 4, 7)), 
                                    color= ifelse(india$iyear < 1990, "dodgerblue",ifelse(india$iyear < 2000, "lawngreen","#FF0000")), 
                                    stroke = TRUE, fillOpacity = 0.6)
TerrorMapIndia