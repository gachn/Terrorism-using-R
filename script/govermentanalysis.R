input=read.csv("gov.csv")
indiacountry=read.csv("IndiaTerrorism.csv")
inpfactor=factor(input$Party)
inplevel=levels(inpfactor)
x=nlevels(inpfactor);
y=nrow(indiacountry)
count=c(0);
for(j in c(1:x))
for(i in c(1:y)){
  print(x+" "+y);
  count[j]=count[j] + nrow(subset(indiacountry,iyear<input[j]$endYear && iyear>=input[j]$Year));
}
total=data.frame(weaptype=weaplevel,Attack=count)
write.csv(total,file="gov_obj.csv")