library(ggplot2)

df <- mtcars

pl <- ggplot(df,aes(x=factor(cyl), y=mpg))
pl2 <- pl+ geom_boxplot(aes(fill = factor(cyl)))  + coord_flip() + theme_dark()

pl3 <- pl2 + xlab('Cylinders') + ylab('Miles Per Galon') + ggtitle('MPG vsCylinders')

print(pl3)