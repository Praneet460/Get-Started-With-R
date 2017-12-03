//Plotting several verticle sample

x=c(rep(1,100),rep(9,100),rep(15,100))

y=c(rnorm(100,50,10),rnorm(100,30,10),rnorm(100,78,10))

//creating the dataframe

D=data.frame(x,y)

p=c(mean(rep(1,100)),mean(rep(9,100)),mean(rep(15,100)))

q=c(mean(rnorm(100,50,10)),mean(rnorm(100,30,10)),mean(rnorm(100,78,10)))


mean=data.frame(p,q)

library(ggplot2)

ggplot()+geom_point(data = D,aes(x,y))+
  geom_point(data = mean,aes(p,q),size=5,color="red")