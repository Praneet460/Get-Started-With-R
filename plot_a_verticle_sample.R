//Plotting a verticle sample with mean

x=rep(1,100)

y=rnorm(100,50,10)

//creating the dataframe of the sampled data

D=data.frame(x,y)

//creating the dataframe of the mean

p=mean(x)
q=mean(y)
mean=data.frame(p,q)

//importing the library

library(ggplot2)

ggplot()+geom_point(data = D,aes(x,y))+
  geom_point(data = mean,aes(p,q),size=5,color="red")
