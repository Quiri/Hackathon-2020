# install.packages("tidyverse")
# install.packages("shiny")

library(tidyverse)
welcome <- "Willkommen im Kurs"

tolower(substr(gsub("[AEIOU]", "A", toupper("Willkommen im Kurs")), 1,4))

gsub("[AEIOU]", "A", toupper(welcome))

welcome %>% 
  toupper() %>% 
  gsub("[AEIOU]", "A", .) %>% 
  substr(1, 4) %>% 
  tolower()

iris %>%
  filter(Species =="setosa")%>%
  select(Petal.Width, Petal.Length, Species) %>%
  mutate(Sum = Petal.Length + Petal.Width) %>%
  summarize(mean = mean(Sum), max = max(Sum))
