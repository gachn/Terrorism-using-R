#india=read.csv("IndiaTerrorism.csv");
library(highcharter)
attackerGroup=factor(indiacountry$gname)
attackerlevel=levels(attackerGroup)
x=nlevels(attackerGroup);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,gname==attackerlevel[i]));
}
totalAttack=data.frame(Responsible_Group=attackerlevel,Total=count)
write.csv(total,file="MostActiveAttackers.csv")
chart = hchart(totalAttack,"bar", hcaes(x =Responsible_Group, y = Total, group = 1),name="TerroristGroup")
chart
