//Creating a linear regression line around the cloud of points


//coordinates of  mean data
x=rnorm(100,10,5)

y=3*x+1

//coordinated of sampled data

p=means$x

q=sapply(p, function(p) rnorm(1,3*p+1,10))

//creating the dataframes

means=data.frame(x,y)

//dataframe of the line

L=data.frame(x,y)

S=data.frame(p,q)

//importing library
library(ggplot2)

ggplot()+geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data = L,aes(x,y),color="blue")+
  geom_point(data=S,aes(x=p,y=q))