df = read.csv("summary_grid_nl.csv")

p = ggplot(data=df, aes(x=epoch, y=val_loss, group=run_cond)) +
  geom_line(aes(color=run_cond))+
  geom_point(aes(color=run_cond))

p + scale_color_discrete(name = "Condition", labels = c("Aware-1",
                                                       "Aware-2",
                                                       "Aware-4",
                                                       "Naïve-1",
                                                      
                                                       
                                                     
                                                       "Naïve-2",
                                                       "Naïve-4",
                                                      
                                                       "Naïve-1250"
                                                       
                                                  
                                                      
                                                       ))

ggplot(data=df, aes(x=epoch, y=val_loss, group=run_cond)) +
  geom_line(aes(color=run_cond))+
  geom_point(aes(color=run_cond))+
  scale_fill_discrete(name = "Condition", labels = c("Aware-1",
  "Aware-0.1",
  "Aware-0.5",
  "Aware-1",
  "Aware-2",
  "Naïve-1",
  "Naïve-0.1",
  "Naïve-0.5",
  "Naïve-1",
  "Naïve-2"))


newdf <- df[ which(lr==1),]
newdf <- subset(df, lr ==1 )
