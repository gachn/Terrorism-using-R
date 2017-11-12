#india=read.csv("IndiaTerrorism.csv");
library(highcharter)
casualties=factor(indiacountry$iyear)
casualtieslevel=levels(casualties)
x=nlevels(casualtieslevel);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,iyear==casualtieslevel[i] ));
}
totalAttack=data.frame(year=casualtieslevel,Total=count)
write.csv(totalAttack,file="casualtiesKashmir.csv")
chart = hchart(totalAttack,"bar", hcaes(x =year, y = Total, group = 1),name="TerroristGroup")
chart
