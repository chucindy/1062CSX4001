library(ggplot2)
library(grid)
library(gridExtra)

ggplot(iris)+
  geom_bar(mapping = aes(x=Species,fill=Species))

g1<-ggplot(iris)+
  geom_bar(mapping = aes(x=Sepal.Length,fill=Species))+
  facet_grid(~Species)
g2<-ggplot(iris)+
  geom_bar(mapping = aes(x=Sepal.Width,fill=Species))+
  facet_grid(~Species)
g3<-ggplot(iris)+
  geom_bar(mapping = aes(x=Petal.Length,fill=Species))+
  facet_grid(~Species)
g4<-ggplot(iris)+
  geom_bar(mapping = aes(x=Petal.Width,fill=Species))+
  facet_grid(~Species)
grid.arrange(g1,g2,g3,g4, nrow = 4)

ggplot(iris)+
  geom_point(mapping = aes(x=Sepal.Length,y=Sepal.Width,color=Species))+
  geom_smooth(mapping = aes(x=Sepal.Length,y=Sepal.Width))
ggplot(iris)+
  geom_point(mapping = aes(x=Petal.Length,y=Petal.Width,color=Species))+
  geom_smooth(mapping = aes(x=Petal.Length,y=Petal.Width))

ggplot(iris)+
  geom_point(mapping = aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_smooth(mapping = aes(x=Sepal.Length,y=Petal.Length,color=Species))
ggplot(iris)+
  geom_point(mapping = aes(x=Sepal.Width,y=Petal.Width,color=Species))+
  geom_smooth(mapping = aes(x=Sepal.Width,y=Petal.Width,color=Species))

ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Sepal.Length))
ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Sepal.Width))
ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Petal.Length))
ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Petal.Width))

G1<-ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Sepal.Length))
G2<-ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Sepal.Width))
G3<-ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Petal.Length))
G4<-ggplot(iris)+
  geom_boxplot(mapping = aes(x=Species,y=Petal.Width))
grid.arrange(G1,G2,G3,G4, nrow = 2)
