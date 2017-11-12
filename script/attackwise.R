x=nrow(indiacountry);
bol=indiacountry$nkill!="NA"
for(i in c(1:x)){
  if(bol[i]){
    #print("found at ")
    ##print(i)
    #indiacountry$nkill[i]=0
  }
  else{
    print("found at ")
    print(i)
    indiacountry$nkill[i]=0
  }
}
write.csv(indiacountry,file="indiaupdated.csv")