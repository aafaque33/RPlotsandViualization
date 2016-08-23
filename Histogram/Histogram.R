library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies,aes(x=rating))
pl2 <- pl+ geom_histogram(binwidth = 0.1,color = 'red', fill = 'yellow',alpha=0.4)

pl3 <- pl2 + xlab('Movie Ratings') + ylab('Count') + ggtitle('Movie Rating Plot')

print(pl3)