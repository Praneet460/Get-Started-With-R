//Plotting a line with coordinates

x=c(-2,7)
y=c(13,-5)

D=data.frame(x,y)

library(ggplot2)

ggplot()+geom_line(data = D,aes(x=x,y=y))