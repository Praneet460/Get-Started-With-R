//Plot more than one point in the graph using ggplot2 library

//suppose the coordinates are : (2,6),(5,4),(1,9)

x=c(2,5,1)
y=(6,4,9)

//Create the dataframe 

D = data.frame(x,y)

//importing ggplot2 library

library(ggplot2)

//customize the graph

ggplot()+geom_point(data=D,aes(x=x,y=y),size=5,color="red")+
  scale_x_continuous(limits = c(0,20),breaks = seq(0,15,5))+
  scale_y_continuous(limits = c(0,20),breaks = seq(0,20,5))
