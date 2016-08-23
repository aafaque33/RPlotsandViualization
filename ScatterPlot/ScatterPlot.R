library(ggplot2)

df <- mtcars

pl <- ggplot(df,aes(x=wt, y=mpg))
pl2 <- pl+ geom_point(aes(size=factor(cyl),color=factor(cyl)),alpha=0.5)

pl3 <- pl2 + xlab('Weight') + ylab('Miles Per Galon') + ggtitle('MPG vs Wt based on Cylinders')

pl4 <- pl3 + scale_color_gradient(low='blue', high = 'red')

print(pl3)