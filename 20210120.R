library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)


fly <- flights

?flights


fly %>% 
  filter(month == 1, day == 1) -> fly11

fly %>% 
  filter(month == 12, day == 25) ->fly1225


fly %>% 
  filter(month == 4, day == 1) ->fly41






a <- ggplot(fly11,aes(x = dep_delay))+
  geom_histogram()


b <- ggplot(fly1225,aes(x = dep_delay))+
  geom_histogram()


c <- ggplot(fly41,aes(x = dep_delay))+
  geom_histogram()



#데이터를 한번에 표현하기
#install.packages('egg')
library(egg)

ggarrange(a,b,c)





fly %>% 
  filter(month == 1|month == 4|month ==12)


#5
fly %>% 
  filter(dep_delay <= 0,arr_delay >= 120)




fly %>% 
  arrange(-arr_delay,-dep_delay)
  

fly %>% 
  arrange(carrier)




fly %>% 
  select(year,month,day)


#변수 삭제, :으로 까지 느낌으로 다수의 범위 지정 가능
fly %>% 
  select(-distance:-time_hour)

#변수 이름 변경
fly %>% 
  select('출발시간' = dep_time)

#원하는 변수를 앞으로 땡겨서 볼수있음
fly %>% 
  select(dest,everything())

#변수이름중 끝나는 말이 공통인것들 뽑기
fly %>% 
  select(ends_with("delay"))

#변수이름중 시작하는 말이 공통인것들 뽑기
fly %>% 
  select(starts_with("arr"))


fly %>% 
  select(starts_with("sched"))


fly_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time)
                      
                  

fly_sml %>% 
  mutate(gain = dep_delay - arr_delay,
         speed = distance/air_time)


fly_sml %>% 
  mutate(air_time2 = arr_time - dep_time)



##filter는 TRUE값만 남긴다


##mutate를 쓰고filter를 쓰면 우리가 원하는 논리연산자로 만들어서 TRUE값만 뽑을수 있다 !를 쓰면 그 반대



fly %>% 
  filter(dep_time == NA)


table(is.na(fly$dep_time))



1:3+1:12



a <- 1:3
b <- 1:12
a+b


