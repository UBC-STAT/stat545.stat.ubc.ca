+++
widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 30  # Order that this section will appear.

title = "Learning Outcomes"
subtitle = ""

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "2"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"
  
  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"
  
  # Text color (true=light or false=dark).
  text_color_light = false

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["20px", "0", "20px", "0"]

[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
+++

### STAT 545A

* Introduction to [R](http://www.r-project.org) and the [RStudio IDE](http://www.rstudio.com/products/rstudio/): scripts, the workspace, RStudio Projects, daily workflow
* Coding style, file and project organization
* Data frames or "tibbles" are the core data structure for data analysis: care for them with the tidyverse
* Data visualization with [`ggplot2`](http://ggplot2.org)
* How to write functions and work with R in a functional style
* Version control with Git; collaboration via [GitHub](https://github.com)

### STAT 547M

* Writing and working with functions in R
* Generate reports from R scripts and [R Markdown](http://rmarkdown.rstudio.com)
* Introduce test-driven development
* Setup an analytical pipeline via `Make`
* Creating interactive apps with a new dashboarding tool, [Dash](https://dashr.plot.ly)
* Distribute data and code via an R package
