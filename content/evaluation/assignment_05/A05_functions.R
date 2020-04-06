library(tidyverse)
library(plotly)
library(ggplot2)
## Add polts
### add ggplot histogram  graph
graph1 <- function(clarity_input = "SI2", button_input ="identity"){
  ## gets the label matching the clarity value
  clarity_label <- DropdownKey$label[DropdownKey$value == clarity_input]
  y_type <- button_input
  
  plot_hist <- diamonds %>% 
    filter(clarity == clarity_label) %>% 
    ggplot() +
    geom_histogram(aes(x = price), color= "black") +
    scale_y_continuous(trans =  y_type) +
    xlab("Price [$]")+
    ylab("Number of Diamonds") +
    ggtitle(paste("Histogram of Diamond's Price with",clarity_label,"clarity"))+
    theme_bw()
  # Convert plots to ggplotly
  ggplotly(plot_hist, tooltip = c("text")) %>%
    ### this is optional but changes how the graph appears on click
    layout(clickmode = 'event+select')
}
### add ggplot boxplot  graph
graph2 <- function(cut_input = "2"){
  cut_label <-Cut_options$label[Cut_options$value ==cut_input]
  plot_bar<-     diamonds %>% 
    filter(cut == cut_label) %>% 
    ggplot() +
    geom_boxplot(aes(x = color, y= price), color= "black") +
    xlab("Color")+
    ylab("Price [$]") +
    scale_y_log10()+
    ggtitle(paste("Price of dimonds with",cut_input,"cut based on the color "))+
    theme_bw()
  # Convert plots to ggplotly
  ggplotly(plot_bar, tooltip = c("text")) %>%
    ### this is optional but changes how the graph appears on click
    layout(clickmode = 'event+select')
}

graph3 <- function(cut_input = "2"){
  cut_label <-Cut_options$label[Cut_options$value ==cut_input]
  plot_scatter<- diamonds %>% 
    filter(cut == cut_label) %>% 
    ggplot() +
    geom_point(aes(x = carat, y= price), color= "black") +
    xlab("Carat")+
    ylab("Price [$]") +
    scale_y_log10()+
    ggtitle(paste("Price of dimonds with",cut_input, "cut based on the carat"))+
    theme_bw()
  # Convert plots to ggplotly
  ggplotly(plot_scatter, tooltip = c("text")) %>%
    ### this is optional but changes how the graph appears on click
    layout(clickmode = 'event+select')
}