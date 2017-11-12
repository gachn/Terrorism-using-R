#indiacountry=read.csv("IndiaTerrorism.csv")
statefactor=factor(indiacountry$targtype1_txt)
statelevel=levels(statefactor)
x=nlevels(statefactor);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,targtype1_txt==statelevel[i]));
}
total=data.frame(target=statelevel,attack=count)
write.csv(total,file="targetwiseobj.csv")