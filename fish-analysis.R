#data("Gaeta_etal_CLC_data") -> fishData
library(tidyverse)
library(ggplot2)

source("R/themes.R")

# Homework: make histogram of scale length, fill by length_cat, facet wrap ~ length_cat/themes

fishData <- read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>%
  mutate(length_cat = case_when(length >= 200 ~ "large", length < 200 ~ "small")) -> fishData

ggplot(data = fishData) +
  geom_histogram(aes(x=scalelength, fill = length_cat)) +
  facet_wrap(~length_cat, scale = "free") +
  theme_aca()


## Chris's modifications

ggplot() +
  geom_histogram(data = fishData, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
