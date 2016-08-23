library(ggplot2)

df <- mpg

pl <- ggplot(df,aes(x=class))
pl2 <- pl + geom_bar(aes(fill=drv))

pl3 <- pl2 + xlab('Class') + ylab('Count') + ggtitle('Count of Classes based on drive')
print(pl3)