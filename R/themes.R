# library(ggplot2)

theme_pres <- function() {
  theme_classic(base_size = 28, base_family = "Franklin Gothic Book") %+replace%
    theme(plot.background = element_rect(fill = "transparent"),
          panel.background = element_rect(fill = "transparent", color = "white"),
          plot.title = element_text(hjust = 0.5, color = "black"),
          axis.ticks = element_line(colour = "black"),
          axis.text.y = element_text(color = "black"),
          axis.text.x = element_text(color = "black"),
    )}

theme_aca <- function() {
  theme_classic(base_size = 18, base_family = "Times New Roman") %+replace%
    theme(plot.background = element_rect(fill = "aliceblue"),
          panel.background = element_rect(fill = "aliceblue", color = NA,),
          axis.ticks = element_line(colour = "black"),
          legend.title = element_text(color = "black"),
          legend.background = element_rect(fill="aliceblue", color = "aliceblue"),
          plot.title = element_text(hjust = 0.5, color = "black"),
          axis.text.y = element_text(color = "black"),
          axis.text.x = element_text(color = "black"),
    )}
