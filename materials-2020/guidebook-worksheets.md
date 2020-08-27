## Introduction 

The purpose of this document is to **revise the [STAT545 guidebook](https://stat545guidebook.netlify.app/index.html)**, adapting the current material into lecture worksheets, pre-readings & videos, and in-class demos, in the form of a table that will be up in the STAT545 website and that will be the main point of access to materials for students.

+ Each "class meeting" will be reviewed, considering how the material will be repurposed into one of the following:

  i. Worksheet material - the section should be adapted to the worksheet format.
  
  ii. Video material / Pre-class work - the section should be adapted into a video or document for pre-reading material.
  
  iii. In-class demos - sections that are fit to be presented as a class demo.
  
  iiii. To remove - material that doesn't fit into the overall context of the worksheet.

+ Old worksheets linked to class meetings may also be reviewed *at a very high level* whenever relevant, making a few notes as to whether their activities could fit into the new lecture worksheets, just to ensure that this is kept in mind when the new worksheets are created.

### A few things to keep in mind when revising the guidebook

+ Lecture worksheets are designed to be completed **in-class**, with about 1 hour per worksheet allocated in a class. This should be taken into account when deciding the amount of guidebook material that can be transformed into a worksheet.

+ The guidebook is now **deprecated** but remains available, with each "worksheet" from previous years linked in each class - activities from these worksheets could also be reused in the new worksheets (with the *new* lecture worksheets ultimately being a mix of adapted guidebook material & old worksheet activities). 

## Class Meetings Revised

### General notes

+ If the guidebook is deprecated, I do think that the outline + learning objectives of each class meeting should be included within the lecture worksheet, but *also* presented at the beginning of each lecture.

### Class Meeting 1: Introduction to STAT545 and GitHub

|                                        | Learning objectives                                              | Key resources                          | Pre-class work           | Lecture worksheet                 | 
|:-------------------------------------- |:---------------------------                                      |:--------------------------------       |:-------------------------|:----------------------------------|
| **1: Introduction to STAT545 & R**     | 1. Become familiar with the STAT545 website and [syllabus](add link, should be located under "course structure" in website). <br /> 2. Explore the basic R syntax. <br /> 3. Write an R script to perform simple calculations. | • Install [R](https://cloud.r-project.org) & [RStudio](https://www.rstudio.com/products/rstudio/download/preview/). [More instructions](https://stat545.com/install.html). <br /> • [Why R?](https://cfss.uchicago.edu/setup/what-is-r/) <br /> • [A (very) short intro to R](https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R/blob/master/documents/A%20(very)%20short%20introduction%20to%20R.pdf). |  [Link to Canvas materials](link here) | [Lecture Worksheet 1](link here)

#### Proposed outline

I assume that there wouldn't be pre-class work for this class (only the optional "how to navigate Zoom" for those that are not familiar), with that said, this is how I picture the workflow (which is essentially adapting the outline that is currently in the guidebook):

+ Intro to STAT545A & what to expect from the class - enter syllabus (~20 min)
+ Install R & R Studio (~15 min) - *maybe breakout rooms for this so that students can help each other*
  + R here: https://cloud.r-project.org
  + RStudio here: https://www.rstudio.com/products/rstudio/download/preview/
  + Commentary on installing this stuff can be found at [stat545: rstudio install](https://stat545.com/install.html)
+ 5 minute break + additional time in case there are troubleshooting issues with R & RStudio that need to be solved individually.
+ Why R? + Lecture worksheet / In-class demo (~50 minutes)
  + Rather than using breakout rooms in the first class (since it may be the first time using R and RStudio for many), I think alternating between an in-class demo where everything in [2.5 Orientation to R](https://stat545guidebook.netlify.app/introduction-to-r.html) & "don't save your workspace" is demonstrated while alternating with students completing the worksheet may be good. 
  + Example of the workflow (1) Vincenzo demonstrates Functions I and Functions II, could simply be an improvised demo in R (2) Students complete the relevant section of the worksheet, and click "yes" on Zoom when they are done (3) When all or almost all students have clicked "yes" (if there is a couple that have not, TAs reach out directly to ask), go on to the next task.

#### Action items

*When all are done, the table will be updated accordingly with the links*

+ Create a "Class 1" section on Canvas with Zoom materials for optional pre-work
+ Add syllabus page to website under "course structure"

### Class Meeting 2: Git, GitHub & Version Control

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **2: Git, GitHub & Version Control**   | *tbd* depending on what is decided for class content  | *tbd* depending on what is decided for class content |[Register for GitHub and create a repository](link here) | No worksheet today |

#### Proposed outline

+ No lecture worksheet *per se* today, there will be a document to include instructions to activities, but the only deliverable would be a link to their personal GitHub repo & to their group repo.
+ The idea with the prework is that it covers, in 30 minutes max, setting a GitHub account and using GitHub as cloud storage - then the class time can be used for setting up Git and the use of GitHub for collaboration, which I think are more complex to follow / have the potential to cause more issues. I have several ideas for this:
  + Adapting the material in [Topic 2: GitHub](https://stat545guidebook.netlify.app/introduction-to-stat-545-and-github.html#topic-2-github-35-min) into a document that students can follow through, but only until (and including) "1.5.3 GitHub as cloud storage - Activity". I think that the rest is easier to just do in class (setting up Git, etc) than having them look through the STAT545 repo, which I find can be a bit confusing.
  + Simply having them follow the [Hello World](https://guides.github.com/activities/hello-world/) tutorial, although I'm not sure if it gets a bit complicated with branching.
+ In addition, the Canvas site could show a table with the groups of students for the collaborative troubleshooting assignment, and we could encourage them to reach out to each other through Canvas if they want! (but the actual "project" can be explained in detail in class)
+ In class, I was thinking of an outline similar to this:
  + Install and configure Git (~10 min)
  + Demo [the typical workflow](https://stat545guidebook.netlify.app/the-version-control-workflow.html#the-typical-workflow-8-min) (~8 min)
  + Students follow [the typical workflow activity](https://stat545guidebook.netlify.app/the-version-control-workflow.html#the-typical-workflow-activity-5-min) in the repo that they created as pre-work (~5 min)
  + **2 minute break**
  + GitHub for collaboration & intro to the collaborative troubleshooting assignment (~65 min)
 + From here on I am not sure of what you were thinking for the group project; should repos be created in advanced for each "group" of students, should they have the chance to create their own repo and add their partner as an admin, will they be using the [fork & clone](https://happygitwithr.com/fork-and-clone.html) workflow or should that be left for STAT545B...? Here are some general ideas that I think should be covered in class:
  + Giving group partners the chance to interact in a breakout room, introduce themselves & create a teamwork document 
  + Branching
  + Opening issues
  + Open and merge a pull request

#### Action items

+ Create a "Class 2" section in Canvas with instructions to (1) register for a GitHub account and (2) create a repository (*what this document should be is tbd*)
+ Create document with instructions for in-class activities, but the only actual "deliverable" would be a link to their personal GitHub repo & to their main GitHub repo.
+ Decide on workflow for the collaborative troubleshooting project, which should be related to what they will do in class.

### Class Meeting 3: R Markdown & Reproducibility 

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **3: R Markdown & Reproducibility**    | 1. Write documents in markdown on GitHub and RStudio <br /> 2. Style an Rmd document by editing the YAML header and customizing the code chunk options. <br /> 3. Render your finalized document to HTML & PDF. | • [R Markdown](https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) <br /> • [GitHub Markdown Cheatsheet](https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) <br /> • [YAML Headers](https://bookdown.org/yihui/rmarkdown/html-document.html) <br /> • [Code chunk options](https://rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf?_ga=2.177968037.1059384083.1597196687-1784159993.1567907747) on page 2. |• [Asking effective questions online](https://stat545guidebook.netlify.app/introduction-to-stat-545-and-github.html#topic-3-asking-effective-questions-online-10-min) <br /> • [10 minute markdown tutorial](https://commonmark.org/help/tutorial/) | [Lecture Worksheet 2](link here) |

#### Proposed outline 

+ Remove the current section on presentations with Rmd, I don't think that many people use them and if they are not going to be used as a deliverable in any point of the course, I'm not sure that it's very relevant - maybe mention it, but not actually go through a demonstration or anything.

  + Output formats, markdown basics, and cheatsheets (~30 min) - *a mix of explanations / in-class demo*
  + Lecture worksheet (~30 min) - *in breakout rooms of 5/6 people*
  + Finish & style R markdown for the teamwork document + push it to the group repo (~30 min) - *in breakout rooms with group partners*

#### Action items

+ Create a "Class 3" section in Canvas with instructions for the adapted "asking effective questions online" activity (right now the link is to the old guidebook)
+ Decide if there is anything else that should be done as pre-work for this lecture? I did include the R Markdown tutorial, and I would encourage students to do that as pre-work too! (It's 10 minutes)

### Class Meeting 4: Data Wrangling I

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **4: Data Wrangling I**                | 1. Recognize the advantages of the tidyverse compared to the "base R" way with respect to good coding practice <br /> 2. Subset and rearrange data with dplyr <br /> 3. Use piping when implementing function chains <br /> 4. Explore data in tibbles| • [R4DS Data Transformation](https://r4ds.had.co.nz/transform.html) <br /> • [R4DS Pipes](https://r4ds.had.co.nz/pipes.html) <br /> • [Intro to dplyr vignette](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html) | *tbd* | [Lecture Worksheet 2](link here) |

#### Proposed outline 

+ Topics to be covered (~20 minutes of in-class demo); I think this is easier learnt through practice so probably not much more time needed)
  + tidyverse
  + dplyr
  + piping
  + tibbles (*as part of the new course outline, it was discussed on #25*)

+ Lecture worksheet (~40 minutes)

+ Break (~5 minutes)

+ Introduce (and maybe start?) Mini-Data Analysis Project (~25 minutes)

#### Action items

+ Create lecture worksheet 2
+ Create a "Class 4" section in Canvas with pre-work: (1) History of tidyverse & dplyr. 
+ Anything else as prework? Maybe opening up a "discussion" section on Canvas where students are required to submit an entry / comment about something? Not sure what this would look like / the discussion topic, but this was often done during my Instructional Skills Workshop and it really helped build connection amongst students. Maybe can be as easy as "why are you taking this course / why are you interested in data science?", particularly seeing as this is the first class that everyone that is dropping the course will have done it already.

### Class Meeting 5: ggplot I

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **5: ggplot I**                        | 1. Identify the seven components of the grammar of graphics underlying ggplot2 <br /> 2. Recognize the advantages of ggplot2 over plotting with base R and lattice <br /> 3. Use different geometric objects and aesthetics to explore various plot types | • [ggplot2 cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/data-visualization-2.1.pdf) <br /> • [R4DS Data Visualization Chapter](https://r4ds.had.co.nz/data-visualisation.html) <br /> • [Intro to dplyr vignette](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html) <br /> • [R Cookbook Graphs](http://www.cookbook-r.com/Graphs/) <br /> • [ggplot elegant graphics for data analysis](http://webcat2.library.ubc.ca/vwebv/holdingsInfo?bibId=8489511) | *tbd* | [Lecture Worksheet 2](link here) |

#### Proposed outline 

*These refer to adapted sections of the 2019 STAT545 guidebook*:
+ Why data visualization? Just plot it + The grammar of graphics (~20 minutes)
+ In-class demo of creating a scatterplot (~10 minutes)
+ Break (~5 minutes)
+ Lecture worksheet (~45 minutes) - in breakout rooms
+ Share your work! (~10 minutes) *Suggestion: Students would go back to the main room and maybe share their graphs with the class? Voluntarily; they could send screenshots / images through the chat and instructor could showcase a few*

#### Action items

+ Create lecture worksheet 2
+ Create a "Class 5" section in Canvas with pre-work: (1) Intro to plotting in R: baseR > lattice > ggplot2 > plotly; (2) Maybe an activity that compares examples of bad vs. good plots, and students have to intuitively identify why some are better than others + maybe submit a comment on that? This would be a good intuitive intro prior to the grammar of graphics being introduced in class!; (3) "Choose your own adventure" poll for the 13th class topic!

### Class Meeting 6: Data wrangling II

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **6: Data Wrangling II**               | 1. Use scoped variants of summarise() and mutate(), with across() <br /> 2. Apply your dplyr knowledge to exploratory data analysis of a dataset | | *tbd* | [Lecture Worksheet 3](link here) |

#### Proposed outline 

*tbd*

#### Action items

+ Create lecture worksheet 3
+ Decide on pre-work
+ Create a "Class 6" section in Canvas with pre-work
