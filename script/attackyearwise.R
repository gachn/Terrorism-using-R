#othercountry=read.csv("GlobalTerrorismExcludingIndia.csv")
yearfactor=factor(othercountry$iyear)
yearlevel=levels(yearfactor)
x=nlevels(yearfactor);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(othercountry,iyear==yearlevel[i]));
}
total=data.frame(year=yearlevel,attack=count)
write.csv(total,file="yearwiseattackobj.csv")