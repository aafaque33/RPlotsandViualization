###############################################
# Author: aafaque
# Project: Visualisation Example
##############################################

########################
# check packages install other wise install them
########################
list.of.packages <- c("ggplot2")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages,dependencies=TRUE)

##################
# Include Packages
################
library(ggplot2)

#---------------------------------
# Redaing Data frame from csv
#--------------------------------
df <- read.csv(paste(getwd(),"/VisualizationProject/","Economist_Assignment_Data.csv",sep=""))

pl <- ggplot(df,aes(x=CPI , y= HDI)) 
pl2 <- pl + geom_point(aes(color=Region),shape=79,size=5)
pl3 <- pl2 + geom_smooth(aes(group=1),method = 'lm',formula = y ~ log(x),se = FALSE,color = 'red')

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore","Pakistan")

pl4 <- pl3 + geom_text(aes(label = Country),color = "gray20", data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)
pl5 <- pl4 + theme_bw()
pl6 <- pl5 + scale_x_continuous(name='Corruption Perception Index, 2011 (10 = least Corrupt)',limits = c(1,10) ,breaks = 1:10) + 
  scale_y_continuous(name = 'Human Development Index, 2011 (1 = Best)', limits = c(0,1),breaks = c(0.2,0.4,0.6,0.8,1)) + 
  ggtitle("Corruption and Human Development")
print(pl6)