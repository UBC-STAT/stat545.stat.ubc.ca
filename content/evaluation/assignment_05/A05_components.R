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
 printer took a galley of type and scrambled it to make a  type specimen book. 
- It has survived not only **five centuries**, but also the leap into electronic typesetting, 
 remaining essentially unchanged.  
")
# create Dropdown
DropdownKey <- tibble(label = unique(diamonds$clarity),
                      value = unique(diamonds$clarity))

Dropdown <- dccDropdown(id = "Dropdown",
                        options = map(1:nrow(DropdownKey), function(i){
                          list(label=DropdownKey$label[i], value=DropdownKey$value[i])
                        }),
                        value = "SI2"
)
# create radio button
button_options <-  tibble(value = c( "identity", "log10"),
                          label = c( "Linear", "Log"))
Button <- dccRadioItems(id='radioitem',
                        options= map(
                          1:nrow(button_options), function(i){
                            list(label=button_options$label[i], value=button_options$value[i])
                          }),
                        value = "identity"
)

# create slider 
cutKey <- levels(diamonds$cut)
Cut_options <- tibble(label=  cutKey, value= c(1:length(cutKey)))

Slider <- dccSlider(id='my-slider',
                    min=1,
                    max=length(cutKey),
                    marks = setNames(as.list(cutKey), 
                                     c(1:length(cutKey))),
                    value = 2
)
# Create graph components

hist_graph= dccGraph(id='Histogram', 
                     figure = graph1()) # gets initial data using argument defaults

bar_graph = dccGraph(id='Boxplot', 
                     figure = graph2()) # gets initial data using argument defaults

line_graph= dccGraph(id='scatter', 
                     figure = graph3()) # gets initial data using argument defaults
       