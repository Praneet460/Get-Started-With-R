//Plot a point using ggplot2 library

//Choose x and y coordinates

x=4
y=9

//Create a dataframe 

D = data.frame(x,y)

//import ggplot2 library

library(ggplot2)

//Plot the point

ggplot()+geom_point(data=D,aes(x=x,y=y),size=10,color="blue")
