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

|                    | resource                                                                                                           | description |
| ---                | ---                                                                                                                | ---          |
| **`cheatsheets & quick resources`**  | [R Markdown Cheatsheet](https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) | R Markdown cheatsheet - two pages of all you need to know |
|                    | [R Markdown @ RStudio](https://rmarkdown.rstudio.com/lesson-1.html)                                                | Consider it the comprehensive R Markdown guidebook - all documentation lives here |
|                    | [The Tidyverse Style Guide](https://style.tidyverse.org/)                                                          | Good coding style is a must for reproducibility, and this guide has all you need to know! | 
|                    | [Asking effective questions with R](https://stackoverflow.com/help/minimal-reproducible-example)                   | An example of a reproducible question on Stack Overflow, and how to achieve this |
|                    | [Reproducibility resources](https://gkhajduk.github.io/reproducible-resources/)                                    | Looking to learn more into reproducibility? This is the place to go |
| **`tutorials`**    | [R Markdown Tutorial](https://commonmark.org/help/tutorial/)                                                       | 10 minute tutorial where each lesson introduces a single Markdown concept with an example |
| **`books`**        | [Bookdown](https://bookdown.org/yihui/rmarkdown/)                                                                  | The definitive reference book to R Markdown. [Choose](https://bookdown.org/yihui/rmarkdown/how-to-read-this-book.html) what is most relevant |
| **`other fun things`** | [Why Microsoft Word must die](http://www.antipope.org/charlie/blog-static/2013/10/why-microsoft-word-must-die.html) | Or in other words, brilliant reasons to use markdown |
|                        | [R Markdown Gallery](https://rmarkdown.rstudio.com/gallery.html)                                               | Check out the range of outputs and formats you can create using R Markdown (everything from interactive documents to presentations, books, or websites!) |
|                        | [Bootswatch themes](https://bootswatch.com/)                                                                   | The html_document engine uses the Bootswatch theme library to support different styles of the document |
|                        | [Creating Pretty Documents with R Markdown](https://cran.r-project.org/web/packages/prettydoc/vignettes/tactile.html) | Learn more about how to use lightweight yet nice themes |

### 2. Data manipulation

|                    | resource                                                                                                           | description |
| ---                | ---                                                                                                                | ---          |
| **`cheatsheets & quick resources`**  | [Tidyverse](https://www.tidyverse.org/)                                                          | The tidyverse website, contains relevant documentation for all tidyverse packages! |
|                    | [Data wrangling in the tidyverse cheatsheet](https://rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) | Data wrangling with dplyr & tidyr cheatsheet |
|                    | [Jenny Bryan's introduction to dplyr](https://stat545.com/dplyr-intro.html)                                        | Learn the basics | 
|                    | [dplyr cheatsheet](http://gauss.inf.um.es/tabular/www/data-transformation.pdf)                                     | Data transformation with dplyr worksheet |
|                    | [dplyr join cheatsheet](https://stat545.com/join-cheatsheet.html)                                                  | Jenny Bryan's go-to guide for dplyr table joins |
|                    | [More on dplyr two-table verbs](https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html)            | A vignette on dplyr's verbs to work with two tables at a time |
|                    | [Handling multiple tibbles](https://stat545.com/multiple-tibbles.html)                                             | For when one tibble is not enough |
|                    | [Pipes](https://r4ds.had.co.nz/pipes.html)                                                                         | Explores the pipe (magrittr package) in more detail - the tidyverse packages load it automatically |
| **`tutorials`**    | [Jenny Bryan's LOTR Tidy Data Lesson](https://github.com/jennybc/lotr-tidy)                                        | Not *exactly* a tutorial, but a lesson on tidying data with several resources + exercises, using the Lord of the Rings trilogy data |
|                    | [Dataquest Load & Clean Data w/ Tidyverse Tutorial](https://www.dataquest.io/blog/load-clean-data-r-tidyverse/)    | Learn to load and clean data using the tidyverse packages! |
| **`books`**        | [R for Data Science](https://r4ds.had.co.nz/)                                                                      | Chapters [5](https://r4ds.had.co.nz/transform.html) on Data Transformation, and Chapters [9-16](https://r4ds.had.co.nz/wrangle-intro.html) focus on Data Wrangling |
| **`other fun things`** | ["Tidy Data" by Hadley Wickham](https://vita.had.co.nz/papers/tidy-data.html)                                  | The original publication describing the notion of tidy data |
|                        | [Bite-sized tidy data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)                 | An informal and code-heavy version of the full tidy data paper |


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

Want to dive deeper into model-fitting? Here are a few more stats heavy resources, if you're interested.

+ [Statistical Learning chapter](https://cfss.uchicago.edu/notes/statistical-learning/) from the Computing for the Social Sciences course at Penn State University. It provides an easy introduction to statistical models and other concepts.
+ You may want to learn more about [the broom package](https://cran.r-project.org/web/packages/broom/vignettes/broom.html) to keep your model output tidy.
+ [Easy intro to model fitting using R](https://uomresearchit.github.io/r-tidyverse-intro/06-model-fitting/) by The Carpentries.

### One last thing

The R universe is permanently expanding, and with so many awesome people contributing to create new packages & resources, it's hard to keep up with everything that is going on. To find out what's happening in R, here are a few things that you can do:

+ Follow the "#rstats" feed on Twitter! You'll find fantastic accounts to follow, and with an ever flowing source of information, it's almost guaranteed that you'll learn something new pretty often.

+ Not on social media? Not to worry. Maelle Salmon collected several different [ways to keep up with R news](https://masalmon.eu/2019/01/25/uptodate/), some through social media, but also through podcasts [The R podcast](https://r-podcast.org/) and newsletters such as [R Weekly](https://rweekly.org/).





