getwd()
#Let's get the abselute path to our workspace.
1+1
dir.create("scripts")
3+5
12/7
(area_hectares <- 1.0)
area_hectares
2.47*area_hectares
area_hectares <- 2.5
2.47*area_hectares
area_acres <- 2.47*area_hectares
area_hectares <- 50
area_hectares <- 2.5
length <- 666
width <- 69
area <- length*width
round(3.14159)
round(3.14159,2)
help(round)
# help() for at få hjælp til hvordan en funktion bruges
hh_members <- c(3,7,10,6)
respondent_wall_type <- c("muddaub","burntbricks","sunbricks")
repsondent_wall_type
length(hh_members)
class(hh_members)
str(hh_members)
hh_members <- c(hh_members, 4,5,6,7)
str(hh_members)
possessions <- c("bicycle","radio","TV")
possessions <- c("mobile",possessions,"solar torch")
num_char <- c(1,2,3,"a")
num_logical <- c(1,2,3,TRUE)
char_logical <- c("a","b","c",True)
tricky <- c(1,2,3,"4")
respondent_wall_type
respondent_wall_type[2]
possessions[2:4]
possessions[c(4,1,4,1,3,2)]
rooms <- c(2,1,1,NA,4)
#missisng values in functions
mean(rooms)
mean(rooms,na.rm=TRUE)
#find our missing values
rooms[!is.na(rooms)]
is.na(rooms)
which(is.na(rooms))
rooms[-4]
#above finding and removing arrors
rooms <- c(1,2,1,1,NA,3,1,3,2,1,1,8,3,1,NA,1)
median(rooms[!is.na(rooms)])
median(rooms,na.rm = TRUE)
rooms[-c(5,15)]
median(rooms[-c(5,15)])
interviews <- read.csv("Data/SAFI_openrefine.csv",stringsAsFactors = FALSE)
?read.table
interviews
dim(interviews)
nrow(interviews)
head(interviews)
head(interviews,2)
tail(interviews,2)
names(interviews)
str(interviews)
str(interviews)
interviews[50,5]
library(tidyverse)




install.packages("tidyverse")
library(tidyverse)
