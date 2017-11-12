library(highcharter)
indiacountry=read.csv("IndiaTerrorism.csv")
weapfactor=factor(indiacountry$weaptype1_txt)
weaplevel=levels(weapfactor)
x=nlevels(weapfactor);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,weaptype1_txt==weaplevel[i]));
}
total=data.frame(weaptype=weaplevel,Total=count)
write.csv(total,file="weapon_type_obj.csv")
hchart(total,"funnel", hcaes(x = weaptype, y = Total, group = 1),name="weapon")
#hchart(total,"line", hcaes(x = weaptype, y = Total, group = 1),name="weapon")