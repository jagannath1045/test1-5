weed.mat<-matrix(c(10,20,30,40,50,60,70,80,90,100,
                   10,30,50,80,100,150,200,50,270,
                   300,10,30,36,80,96,106,110,130,136,144,
                   10,15,30,50,70,86,95,100,105,190,
                   10,40,50,66,78,96,107,120,144,157,
                   10,30,57,98,106,130,160,177,189,198),nrow = 10, byrow = F)
rownames(weed.mat)<-c("Day1","Day2","Day3","Day4","Day5",
                      "Day6","Day7","Day8","Day9","Day10")
colnames(weed.mat)<-c("V1","V2","V3","V4","V5","V6")
weed.mat
apply(weed.mat,2,mean)
apply(weed.mat,1,mean)
## atempt 1 for apply function for both rows and columns)
apply(weed.mat, c(1,2), mean)
# didnt work
# trail 2
apply(weed.mat,max(1,2), max)
#attempt3
appply(weed.mat, mean(1,2),mean)
max(weed.mat[1,])
for (i in 1:10){
  row<- weed.mat[i,]
  max<- max( row)
  print(max)
}
  print ( max)
}

# for loop for columns
for ( j in 1:6){
  column<- weed.mat[,j]
  cmax<- max(column)
  print(cmax)
weed.mat[1,]
weed.mat[2,]
weed.mat[3,]
weed.mat[4,]
weed.mat[5,]
weed.mat[,1]
weed.mat[,2]
# data frame
weed.df<- data.frame(weed.mat)
class(weed.df)
apply(weed.df,2,mean)
apply(weed.df,1,mean)
# create function to include a new variable in data frame and apply same fucntion
proportion<- function(x){
  x/max(x)
}
apply(weed.df, 1, proportion)
apply(weed.df,2, proportion)
#another example 
std<- function(x){
  sd(x)
}

apply(weed.df, 1, std)

#lapply for list
lapply(weed.df,mean)
sapply(weed.df,mean)
grades
tapply(grades,gpa,gender,mean)
tapply(grades$gpa, grades$gender,mean)
tapply(grades$gpa, grades$ethnicity,mean)
str(grades$ethnicity)
teams<-c("India", "bangladesh", "srilanka","britain")
matches<-c(10,10,10,10)
winloss<- c()
matches<-data.frame(teams, matches)
matches
matches$win<-c(9,5,4,3)
matches
matches$status<-c(0,1,0,1)
matches

q<- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
q
mapply(rep,2:5, 5:5)
