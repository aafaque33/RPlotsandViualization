library(ggplot2)
library(ggthemes)

pl <- ggplot(mpg,aes(x=displ, y= hwy))

pl2 <- pl + geom_point(aes(size=factor(cyl),color=manufacturer),alpha=0.4)

pl3 <- pl2 + facet_grid(. ~ drv) + theme_igray()

# drv facet of yaxis , tilda sign and . (nothing facet) on x-axis 
 
print(pl3)