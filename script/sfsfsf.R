attackerGroup=factor(india$gname)
attackerlevel=levels(attackerGroup)
x=nlevels(attackerGroup);
count=c(1:x);
for(i in c(1:x)){
  if(attackerlevel[i]=="Unknown")
  {
    
  }
  else
    count[i]=nrow(subset(india,gname==attackerlevel[i]));
}
Attacker_Group=data.frame(Responsible_Group=attackerlevel,Total=count)
Attacker_Group=Attacker_Group[order(-count),] %>% head(10)
Attacker_Group=Attacker_Group[order(Attacker_Group$Responsible_Group),]
chart <- highchart() %>% 
  hc_xAxis(categories = Attacker_Group$Responsible_Group) %>% 
  hc_add_series(name="TerroristGroup",data=Attacker_Group$Total) %>% 
  hc_add_theme(hc_theme_darkunica()    ) %>%
  hc_title(text="Responsible Groups")

chart=chart %>%
  hc_chart(type = "bar",
           options3d = list(enabled = TRUE, beta = 15, alpha = 15),borderColor = '#EdfA95',
           borderWidth = 2)
print(chart)