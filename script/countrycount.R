#unique=read.csv("uniquecountry.csv")
#country=read.csv("terrorismdataset.csv")
  for(i in c(1:nrow(uk))){
    unique$total[i]=nrow(subset(country,country_txt==unique$Country[i]))
  }
write.csv(unique,file="obj1.csv")
