library(tidyverse)



#3.2.4
#1
ggplot(mpg)


#2
summary(mpg)
table(mpg)

#3
?mpg

#4

ggplot(mpg,aes(x = displ,
               y = hwy))+
  geom_point()

ggplot(mpg,aes(x = displ,
               y = cyl))+
  geom_point()

ggplot(mpg,aes(x = cyl,
               y = hwy))+
  geom_point()




#5
ggplot(mpg,aes(x = class,
               y = drv))+
  geom_point()
#class변수값이 범주형이라 삼점도가 정확히 그려지지 않는다





#1.3.1
#1
ggplot(mpg)+
  geom_point(aes(x = displ,
                 y= hwy),
                 color = "blue")


ggplot(mpg,aes(x = displ,
               y = hwy,
               color = "blue"))+
  geom_point()


ggplot(mpg,aes(x = displ,
               y = hwy),
               color = "blue")+
  geom_point()
#2
?mpg

#3

ggplot(mpg,aes(x = ))






ggplot(mpg,aes(x = displ,
               y = hwy,
               color = class))+
  geom_point()





ggplot(mpg) +
  geom_point(aes(x = displ,
                 y = hwy,
                 color = class,
                 alpha = class,
                 shape = class))



ggplot(mpg)+
  geom_point(aes(x = displ,
                 y = hwy,
                 color = class))+
  facet_wrap(~class)+
  geom_smooth()


ggplot(mpg,aes(x = displ,
               y = hwy,
               color = class))+
  geom_point()+
  facet_wrap(~class)+
  geom_smooth()




ggplot(mpg,aes(x = displ,
               y = hwy))+
  geom_point(aes(color = class))+
  geom_smooth()



#
dm <- diamonds



dm


ggplot(dm,aes(x = cut,
              y = stat(prop),
              group = 1))+
  geom_bar()



ggplot(dm,aes(x = cut,
              fill = clarity))+
  geom_bar()





ggplot(dm)+
  geom_bar(aes(x = cut,
               fill = clarity,
               position = dodge))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")



install.packages("maps")
