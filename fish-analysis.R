#data("Gaeta_etal_CLC_data") -> fishData
#library(tidyverse)

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>%
  mutate(length_cat = case_when(length >= 300 ~ "large", length <= 300 ~ "small")) 
