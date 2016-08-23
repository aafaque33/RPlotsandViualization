library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies,aes(x=year, y= rating))

  pl2 <- pl + geom_bin2d() 

pl3 <- pl2 + scale_fill_gradient(high='red',low = 'green')

print(pl3)