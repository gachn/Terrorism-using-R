#globalYear=read.csv("yearwiseattackobj.csv")
#indiaYear=read.csv("indiayearwiseattackobj.csv")
library(highcharter)
hc <- highchart() %>% 
  hc_xAxis(categories = globalYear$year) %>% 
  hc_add_series(name = "India", data = indiaYear$attack) %>% 
  hc_add_series(name = "Others", data = globalYear$attack) %>% 
  hc_title(text="Comparision of Attacks in India vs Attack in Other Countries")
hc