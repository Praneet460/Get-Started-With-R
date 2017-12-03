//Samples along a line

//Creating a line y=3x+1

x=c(0,25)
y=3*x+1

//plotting the means on the line

means=c(1,9,15,22)
y_ord=3*means+1


//creating the sampled data

a=c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
b=c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))


//creating the dataframes

//dataframe of line
D=data.frame(x,y)

//dataframe of means
M=data.frame(means,y_ord)

//dataframes of sampled data
S=data.frame(a,b)

//importing library
library(ggplot2)

//plotting the graph

ggplot()+geom_line(data=D,aes(x,y))+
  geom_point(data=M,aes(means,y_ord),size=5,color="red")+
  geom_point(data=S,aes(a,b))