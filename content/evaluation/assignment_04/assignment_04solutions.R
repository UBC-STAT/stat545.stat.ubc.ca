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

plot_hist <- ggplot(diamonds) +
  geom_histogram(aes(x = price), color= "black") +
  xlab("Price [$]")+
  ylab("Number of Diamonds") +
  ggtitle("Histogram of Diamond's Price")+
  theme_bw()

### add ggplot boxplot  graph
plot_bar<- ggplot(diamonds) +
  geom_boxplot(aes(x = cut, y= price), color= "black") +
  xlab("Cut")+
  ylab("Price [$]") +
  scale_y_log10()+
  ggtitle("Price of dimonds based on the cut")+
  theme_bw()

# Convert plots to ggplotly
graph1 <- ggplotly(plot_hist, tooltip = c("text"))
graph2 <- ggplotly(plot_bar, tooltip = c("text"))

## Assign components to variables

## Add headers
header1 <-  htmlH1("Diamonds Dataset")
header3 <-  htmlH3("Data Exploration")

## Add Markdown Features and Figure from URL
markdown_feature<- dccMarkdown("
##### Dash and Markdown

Text was borrowed from [Lorem Ipsum](http://www.lipsum.com/)

![Local copy of Commons:Image:Information.svg](http://upload.wikimedia.org/wikipedia/en/thumb/2/28/Information.svg/256px-Information.svg.png)
*Local copy of Commons:Image:Information.svg*

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
Dropdown <- dccDropdown(
  id = "Dropdown",
  options = nrow(DropdownKey), function(i){
      list(label=DropdownKey$label[i], value=DropdownKey$value[i])
    },
  value = "SI2"
)

#create slider 
cutKey <- levels(diamonds$cut)
Slider <- dccSlider(id='my-slider',
                    min=1,
                    max=length(cutKey),
                    marks = setNames(as.list(cutKey), 
                                     c(1:length(cutKey))),
                    value = 2
)

## Create Dash instance
app <- Dash$new()
## Specify App layout
app$layout(
  htmlDiv(
    list(
      header1 ,
      header3 ,
      markdown_feature,
      Dropdown,
      Slider,
      dccGraph(id='Histogram', figure = graph1),
      dccGraph(id='Boxplot', figure = graph2)
    )
  )
)
## App Callbacks
## Update Plot
## Run app
app$run_server(debug=TRUE)
# command to add dash app in Rstudio viewer:
# rstudioapi::viewer("http://127.0.0.1:8050")