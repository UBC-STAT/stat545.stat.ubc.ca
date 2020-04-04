# author: YOUR NAME
# date: THE DATE
"This script is the main file that creates a Dash app.
Usage: app.R
"
## Load libraries
library(dash)
library(dashCoreComponents)
library(dashHtmlComponents)
library(dashTable)
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
  ggplotly(plot_hist, tooltip = c("text"), width=500)%>%
    partial_bundle()
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
  ggplotly(plot_bar, tooltip = c("text"), width=600)%>%
    partial_bundle()
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
  ggplotly(plot_scatter, tooltip = c("text"), width=600)%>%
    partial_bundle()
}
## Assign components to variables
## Add headers
header1 <-  htmlH1("Diamonds Dataset")
header3 <-  htmlH3("About Lorem Ipsum")
## Add Markdown Features and Figure from URL
markdown_feature<- dccMarkdown("
![](https://i.pinimg.com/originals/0f/a1/89/0fa189aff3de8adad27e7030da742d04.png)
Text was borrowed from [Lorem Ipsum](http://www.lipsum.com/)
- *Lorem Ipsum* is simply dummy text of the printing and  typesetting industry. 
- Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown 
 printer took a galley of type and scrambled it to make a 
 type specimen book. 
- It has survived not only **five centuries**, but also the leap into electronic typesetting, 
 remaining essentially unchanged.  
")
#create Dropdown
DropdownKey <- tibble(label = unique(diamonds$clarity),
                      value = unique(diamonds$clarity))
Dropdown <- dccDropdown(id = "Dropdown",
                        options = map(1:nrow(DropdownKey), function(i){
                          list(label=DropdownKey$label[i], value=DropdownKey$value[i])
                        }),
                        value = "SI2"
)
#create radio button
button_options <-  tibble(value = c( "identity", "log10"),
                          label = c( "Linear", "Log"))
Button <- dccRadioItems(id='radioitem',
                        options= map(
                          1:nrow(button_options), function(i){
                            list(label=button_options$label[i], value=button_options$value[i])
                          }),
                        value = "identity"
)

#create slider 
cutKey <- levels(diamonds$cut)
Cut_options <- tibble(label=  cutKey, value= c(1:length(cutKey)))

Slider <- dccSlider(id='my-slider',
                    min=1,
                    max=length(cutKey),
                    marks = setNames(as.list(cutKey), 
                                     c(1:length(cutKey))),
                    value = 2
)
# create graphs

hist_graph= dccGraph(id='Histogram', 
                     figure = graph1())
bar_graph = dccGraph(id='Boxplot', 
                     figure = graph2())
line_graph= dccGraph(id='scatter', 
                     figure = graph3())             
## Create Dash instance
app <- Dash$new()
## Specify App layout
## 
## 
app$layout(
  
  # TITLE BAR
  htmlDiv(
    list(
      header1
    ), style = list('columnCount'=1, 
                    'background-color'= 'black', 
                    'color'='white',
                    'text-align'='center')
  ),
  
  # SIDEBAR
  htmlDiv(
    list(
      htmlDiv(
        list(
          htmlDiv(
            list(
              header3, 
              markdown_feature),
            style = list('background-color'='lightgrey', 
                         'columnCount'=1, 
                         'white-space'='pre-line')
          ),
          htmlDiv(
            list(
              htmlDiv(
                list(
                  htmlDiv(
                    list(
                      # Histogram here
                      htmlP("Select diamonds' clearity"),
                      Dropdown,
                      htmlP("Select y-axis scale"),
                      Button,
                      hist_graph), 
                    style=list('width'='100%')
                  ),
                  htmlDiv(
                    list(
                      htmlP("Select diamonds' cut"),
                      Slider,
                      bar_graph,
                      line_graph
                    ), style=list('width'='100%')
                  )
                ), style = list('display'='flex')
              )
              
              
            )
          )
        ), style=list('display'='flex')
      )
    ), style = list('display'='flex')
  )
)
## 
## App Callbacks
app$callback(
  #update figure of gap-graph
  output=list(id = 'Histogram', property='figure'),
  #based on values of year, continent, y-axis components
  params=list(input(id = 'Dropdown', property='value'),
              input(id = 'radioitem', property='value')),
  #this translates your list of params into function arguments
  function(clarity_input, button_input) {
    graph1(clarity_input, button_input)
  })

app$callback(
  #update figure of gap-graph
  output=list(id = 'Boxplot', property='figure'),
  #based on values of year, continent, y-axis components
  params=list(input(id = 'my-slider', property='value')),
  #this translates your list of params into function arguments
  function(cut_input) {
    graph2(cut_input)
  })

app$callback(
  #update figure of gap-graph
  output=list(id = 'scatter', property='figure'),
  #based on values of year, continent, y-axis components
  params=list(input(id = 'my-slider', property='value')),
  #this translates your list of params into function arguments
  function(cut_input) {
    graph3(cut_input)
  })

## Run app
app$run_server(debug=TRUE)
# command to add dash app in Rstudio viewer:
#rstudioapi::viewer("http://127.0.0.1:8050")