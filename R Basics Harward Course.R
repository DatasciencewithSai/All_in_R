

## This Course all about R basics and Data analysis visualization and manipulation 
## and productivity tools 

##libraries

library(ggplot2)


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
x <- c(50:82)



sum(heights$height %in% !x)

sum(heights$height%%1==0)

sum(!(x %in% heights$height))

x%%1==0

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

library(ggplot2)

olive %>% ggplot(aes(palmitic, palmitoleic)) +geom_point()


olive %>% ggplot(aes(eicosenoic))+geom_histogram()


olive %>% ggplot(aes(region, palmitic))+geom_boxplot()


olive %>% ggplot(aes(region, palmitic))+geom_boxplot()

###notes on programming in R

functions 
1. if else 
2. ifelse 
3. any()
4. all()


#12/12
##if else 
  
##ifelse usefull mainly with vectors 

##ifelse(is.na(na_example),0,na_example) ##replace all NA values with zero 

## any() is like "like any" in sql 
## all is like "like all" in SQL 

## USE identical to compare to functions are others 

##for loops 

##apply family functions 
apply() 
sapply()
tapply()
mapply()

## other functions that are used are 

split()
cut 
quantile()
reduce 
identical 
unique()

ifelse(heights$sex=="Female",1,2)

ifelse(heights$sex=="Female",1,2)
sum(ifelse(heights$sex=="Female",1,2))

mean(ifelse(heights$height>72,heights$height,0))

inches_to_ft <- function(x){
  x/12
}

inches_to_ft(144)

sum(ifelse(heights$height/12<5,1,0))

head(heights2)

head(heights$height/12)

any(TRUE, FALSE, FALSE)
