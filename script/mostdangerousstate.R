#indiacountry=read.csv("IndiaTerrorism.csv")
statefactor=factor(indiacountry$provstate)
statelevel=levels(statefactor)
x=nlevels(statefactor);
count=c(1:x);
for(i in c(1:x)){
  count[i]=nrow(subset(indiacountry,provstate==statelevel[i]));
}
total=data.frame(state=statelevel,attack=count)
#write.csv(total,file="mostdangerousstateobj.csv")
hc<-hchart(total, "line", 
           hcaes(x = state, y = attack, group = 0)) %>% 
  hc_title(text="Most Dangerous state/Union Territory")
hc