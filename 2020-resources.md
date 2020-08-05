# Resources

This document compiles the resources linked in the STAT545 guidebook, divided by categories. Eventually, the goal is to have this document in some form under the "Resources" tab in the STAT545 website.

## Github

+ [**GitHub Guides**](https://guides.github.com/) has lots of info about GitHub. If you do go here, I recommend you start with [“Hello, World!”](https://guides.github.com/activities/hello-world/).
+ [**Getting started with git**](https://happygitwithr.com/install-git.html) is a good place to get started with Git, which is different from GitHub, and manages the evolution of your files - what is known as [version control](https://www.r-bloggers.com/beyond-basic-r-version-control-with-git/). 
+ Some thought should be given to your [**github username**](https://happygitwithr.com/github-acct.html#username-advice).
+ There are [many types of **github accounts**](https://docs.github.com/en/github/getting-started-with-github/types-of-github-accounts). 
+ To master Github, you shall master [**issues**](https://guides.github.com/features/issues/), a collaborative way of tracking tasks and changes to your project.
+ And to master the styling of your GitHub documents, here is a [Markdown cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf). Markdown is a way to style documents on the web.
+ The [**Github Student Developer Pack**](https://education.github.com/pack) is a brilliant set of developer tool freebies for students that you won't want to miss.
+ Lastly, the complete guide to thrive in GitHub and Git, [Happy Git and GitHub for the useR](https://happygitwithr.com/), by Jenny Bryan. 
+ Want to share your GitHub repository with the world? [**Make it into a website**](https://pages.github.com/) with GitHub pages.

## R

### General resources

This is a compilation of general resources for getting started with R and R studio and exploring the diverse functionalities of the R ecosystem. Take a look!

+ [Getting started with R in videos](https://www.youtube.com/playlist?list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A).
+ A [list of R vocabulary](http://adv-r.had.co.nz/Vocabulary.html) by Hadley Wickham that goes through the basic functions you need to know to be fluent in R.
+ The [here package](https://here.r-lib.org/) has to be amongst the top 10 best things to ever happen in R - in short, it will save you from broken file paths. More on [how to use it](http://jenrichmond.rbind.io/post/how-to-use-the-here-package/).
+ On the note of making your life in R easier, here is essential advice on why [you should never save your workspace in R](https://www.r-bloggers.com/using-r-dont-save-your-workspace/).
+ [Cheatsheets](https://rstudio.com/resources/cheatsheets/) will be your best friend in R.
+ [Swirl tutorials](https://swirlstats.com/) to learn R in RStudio (without fear!).
+ All the ins and outs of doing data science in R are in the [R for Data Science book](https://r4ds.had.co.nz/).
+ Hadley Wickham's [Advanced R](http://adv-r.had.co.nz/) for intermediate R users that want to dive deeper into the language. 
+ When you're ready to turn your code into an package, [the R packages book](http://r-pkgs.had.co.nz/) will be there for you. 
+ [Don't R alone!](http://www.noamross.net/archives/2013-01-07-collaborating-with-r/) A guide to tools for collaborating with R.
+ Have an R question? [Stack Overflow](https://stackoverflow.com/questions/tagged/r) is the place to ask.

### 1. R Markdown & Reproducibility 

+ https://style.tidyverse.org/ r style guide
+ https://bookdown.org/yihui/rmarkdown/
+ https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf
+ https://stat545.com/r-markdown.html - on markdown
+ http://www.antipope.org/charlie/blog-static/2013/10/why-microsoft-word-must-die.html - reasons to use markdown for your analysis
+ https://commonmark.org/help/tutorial/ for learning markdown
+ https://rmarkdown.rstudio.com/lesson-1.html also for learning markdown 
+ https://gkhajduk.github.io/latex-markdown-resources/ latex & markdown resources
+ Asking questions with R https://stackoverflow.com/help/minimal-reproducible-example
+ Reproducibility resources https://gkhajduk.github.io/reproducible-resources/

### 2. Data manipulation

+ https://www.tidyverse.org/ the tidyverse
+ https://rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf data wrangling w dplyr cheatsheet
+ https://stat545.com/dplyr-intro.html intro to dplyr
+ https://r4ds.had.co.nz/transform.html data transformation, related to dplyr
+ https://r4ds.had.co.nz/pipes.html pipes (tidyverse) from the magrittr package
+ https://vita.had.co.nz/papers/tidy-data.html tidy data paper by hadley
+ https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html an informal summary of the tidy data paper
+ https://github.com/jennybc/lotr-tidy/blob/master/01-intro.md jenny bryan's intro to tidy data
+ https://www.tidyverse.org/blog/2020/05/tidyr-1.1.0/ tidyr 1.1.0 updates, but check the tidyverse blog for the latest updates to the tidyverse!
+ https://stat545.com/join-cheatsheet.html jenny's dplyr join cheatsheet
+ https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html dplyr two table verbs
+ https://r4ds.had.co.nz/relational-data.html relational data chapter, all about different types of joins
+ https://stat545.com/multiple-tibbles.html multiple tibbles

### 3. Data visualization

|                    | resource                                                                                                           | description |
| ---                | ---                                                                                                                | ---          |
| **`cheatsheets`**  | [ggplot2 cheatsheet](https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)                        | Data visualization with ggplot cheatsheet |
| **`tutorials`**    | [Jenny Bryan's ggplot2 tutorial](https://github.com/jennybc/ggplot2-tutorial)                                      | Teaching materials and a tutorial for ggplot2 |
|                    | [A comprehensive 3-part ggplot2 tutorial](http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html) | A complete three-part tutorial that focuses on making nice visualizations with ggplot2 |
|                    | [Plotting in R](http://www.jvcasillas.com/base_lattice_ggplot/)                                                    | A brief tutorial to learn how to plot in R using base, lattice, and ggplot2 |
|                    | [Harvard R graphics with ggplot2 workshop](http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html)             | An advanced tutorial for creating graphics with ggplot2 that touches on statistical transformation |
|                    | [Wiz for Data Viz](https://ourcodingclub.github.io/course/wiz-viz/index.html)                                      | A longer course stream aimed at students who want to improve and expand their data visualization skills. Created by "Our Coding Club" at the University of Edinburgh, free & open-source! |
|                    | [Shiny tutorial](https://shiny.rstudio.com/tutorial/)                                                              | Shiny is an R package that allows you to build interactive web apps straight from R - another way to tell your data story! |
| **`books`**        | [ggplot2 book](https://ggplot2-book.org/)                                                                          | Hadley's "ggplot2: elegant graphics for data analysis" 
|                    | [Grammar of Graphics](http://webcat1.library.ubc.ca/vwebv/holdingsInfo?bibId=5507286)                              | Leland Wilkinson's grammar of graphics provides a framework to create visualizations in a layered & structured manner 
|                    | [Fundamentals of Data Visualization](https://serialmentor.com/dataviz/introduction.html)                           | A guide to making visualizations that accurately reflect the data, tell a story, and look professional.
|                    | [R Graphics Cookbook](http://www.cookbook-r.com/Graphs/)                                                           | Focuses on creating graphs in R using ggplot2 |
| **`other fun things`** | [Jenny Bryan's STAT545 Effective Visualizations](https://stat545.com/effective-graphs.html)                        | "Do's and don'ts of making effective graphics" by Jenny Brian |
|                    | [Recognizing misleading axes](https://www.callingbull.org/tools/tools_misleading_axes.html)                        | Calling Bull I: Identifying misleading axes on graphs |
|                    | [The Principle of Proportional Ink](https://www.callingbull.org/tools/tools_proportional_ink.html)                 | Calling Bull II: The principle of proportional ink |
|                    | [Less is More](https://speakerdeck.com/cherdarchuk/remove-to-improve-the-data-ink-ratio)                           | A simple animation about data-ink ratio - when it comes to graphs, less is more |
|                    | [Data-to-Viz](https://www.data-to-viz.com/)                                                                        | A tool to help you choose the most appropriate graph for your data (and things to avoid) |
|                    | [Colourblind-friendly palette](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette)   | Colours I: Two colorblind-friendly color palettes from the R cookbook |
|                    | [Comprehensive list of R colour palettes by Emil Hvidtfeldt](https://github.com/EmilHvitfeldt/r-color-palettes)    | Colours II: All (or almost all) color palettes available in the R ecosystem, curated by Emil Hvitfeldt |
|                    | [Interactive Coloring for Colorblindness](https://davidmathlogic.com/colorblind/#%23BF3EFF-%2366CDAA-%23FF8247-%2348D1CC) | Colours III: A resource to make your own colorblind-friendly palette, pays attention to different types of colorblindness |
|                    | [Interactive Graphs with Plotly](https://plotly.com/)                                                              | Originally developed for Python, plotly allows for interactive exploration of a plot made with ggplot2 |

### 4. Model-fitting

+ https://rstats.wtf/
+ https://cfss.uchicago.edu/notes/linear-models/
+ https://cran.r-project.org/web/packages/broom/vignettes/broom.html










