#data("Gaeta_etal_CLC_data") -> fishData
#library(tidyverse)

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>%
  mutate(length_cat = case_when(length >= 200 ~ "large", length <= 200 ~ "small")) 
