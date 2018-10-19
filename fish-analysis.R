#data("Gaeta_etal_CLC_data") -> fishData
#library(tidyverse)
library(ggplot2)

source("R/themes.R")

# Homework: make histogram of scale length, fill by length_cat, facet wrap ~ length_cat/themes

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>%
  mutate(length_cat = case_when(length >= 200 ~ "large", length <= 200 ~ "small")) -> fishData

ggplot(data = fishData) +
  geom_histogram(aes(x=scalelength, fill = length_cat)) +
  facet_wrap(~length_cat, scale = "free") +
  theme_aca()