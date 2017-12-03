//Plot a line with equation y=3x+1

x=c(0,10)
y=3*x+1


//Creating the dataframe

D=data.frame(x,y)

library(ggplot2)

ggplot()+geom_line(data = D,aes(x=x,y=y))