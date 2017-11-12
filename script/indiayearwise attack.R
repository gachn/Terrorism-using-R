indiacountry=read.csv("IndiaTerrorism.csv")
yearfactor=factor(indiacountry$iyear)
yearlevel=levels(yearfactor)
x=nlevels(yearfactor);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,iyear==yearlevel[i]));
}
total=data.frame(year=yearlevel,attack=count)
write.csv(total,file="indiayearwiseattackobj.csv")