library(tidyverse)
interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")
view(interviews)
head(interviews)
dim(interviews)
#Most common dplyr funktions
interviews[ ,3:4]
select(interviews, village, no_membrs, years_liv)
filter(interviews, village=="God")
#pipes
interviews2 <- filter(interviews, village=="God")
interviews_God <- select(interviews2, no_membrs, years_liv)
interviews_God
interviews %>%
  filter(village=="God") %>%   
  select(no_membrs, years_liv)  
# creat an object via pipe
interviews_god2 <- interviews %>%
  filter(village=="God") %>%   
  select(no_membrs, years_liv) 
interviews_god2
interviews_new <- interviews %>% 
  filter(memb_assoc=="yes") %>% 
  select(affect_conflicts, liv_count, no_meals)
# Mutate I need to creat a colum with ration of houshold members to rooms used for sleeping
interviews %>% 
  mutate(people_per_room = no_membrs / rooms ) %>% 
  pull()
room_ratio <- interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  mutate(people_per_room = no_membrs / rooms ) %>% 
  pull ()
view(room_ratio)
meals <- interviews %>% 
  mutate(total_meals = no_meals*no_meals) %>% 
  filter(total_meals>20) %>% 
  select(village, total_meals)
interviews %>% 
  group_by(village) %>% 
  summarize(mean_no_members = mean(no_membrs))
view(room_ratio)
write_csv(room_ratio, path = "Data_Output/room_ratio.csv")
