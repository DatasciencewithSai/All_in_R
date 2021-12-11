

## This Course all about R basics and Data analysis visualization and manipulation 
## and productivity tools 




##Course Assignment 


install.packages("dslabs")

library(dslabs)
data(heights)
options(digits = 3)

library(dplyr)

View(heights)

names(heights)

ind<- mean(heights$height)

which(heights$height>ind)

a <- which(heights$height>ind)

heights$sex[a]

sum(heights$height>ind)

mean(heights$height>ind)


str(heights)

avg <- heights %>% summarise(avg = mean(height))

heights %>%filter(height > ind) %>% count(sex)

heights %>% count(sex)

238+812

238/1050

mean(heights$sex == "Female") ## gives the proportion of females in data set 

sum(heights$sex == "Female") ### give count of female in data set 

match(min(heights$height),heights$height)  ###gives the index number


which(heights %in% a )

heights[1032,] ### row value of that perticular index number 


max(heights$height)

?match
x < 50:82

sum(heights$height %in% c(50:82))

heights2 <- heights %>% mutate(ht_cm =height*2.54)  ## create new column 


heights2[18,]


mean(heights2$ht_cm)


females <- filter(heights2, sex == "Female")

count(females)

mean(females$ht_cm)


###loading new data set 

library(dslabs)
data(olive)
head(olive)








