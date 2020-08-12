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

+ Create lecture worksheet (should be located in a public repo to ensure open-access, and be available in raw format so that students can copy and paste)
+ Create a "Class 1" section on Canvas with Zoom materials for optional pre-work
+ Add syllabus page to website under "course structure"

#### Additional notes
Since this is the intro class, it wouldn't have a lecture worksheet per se, most of the content can be discussed in class, and the creation / guidebook adaptation of some documents for students. I think I would add the STAT545 (and STAT547) syllabus to the "course structure" part of the website (where office hours / class meeting schedules / policies are listed).

### Class Meeting 2: Git, GitHub & Version Control

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **2: Git, GitHub & Version Control**   | *tbd* depending on what is decided for class content  | *tbd* depending on what is decided for class content |[Register for GitHub and create a repository](link here) | No worksheet today |

#### Proposed outline

+ No lecture worksheet *per se* today, there will be a worksheet to include instructions to activities, but the only deliverable would be a link to their personal GitHub repo & to their group repo.
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
+ Create lecture worksheet with instructions for in-class activities, but the only actual "deliverable" would be a link to their personal GitHub repo & to their main GitHub repo.
+ Decide on workflow for the collaborative troubleshooting project, which should be related to what they will do in class.

### Class Meeting 3: R Markdown & Reproducibility 

|                                        | Learning objectives                                   | Key resources                   | Pre-class work                  | Lecture worksheet                 | 
|:---------------------------------------|:------------------------------                        |:--------------------------------|:--------------------------------|:----------------------------------|
| **3: R Markdown & Reproducibility**    | 1. Write documents in markdown on GitHub and RStudio <br /> 2. Style an Rmd document by editing the YAML header and customizing the code chunk options. <br /> 3. Render your finalized document to HTML & PDF. | • [R Markdown](https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) <br /> • [GitHub Markdown Cheatsheet](https://rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) <br /> • [YAML Headers](https://bookdown.org/yihui/rmarkdown/html-document.html) <br /> • [Code chunk options](https://rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf?_ga=2.177968037.1059384083.1597196687-1784159993.1567907747) on page 2. |[Asking effective questions online](https://stat545guidebook.netlify.app/introduction-to-stat-545-and-github.html#topic-3-asking-effective-questions-online-10-min) <br /> [10 minute markdown tutorial](https://commonmark.org/help/tutorial/) | [Lecture Worksheet 2](link here) |

#### Proposed outline 

+ I would remove the current section on presentations with Rmd from the guidebook altogether, I don't think that many people use them and if they are not going to be used as a deliverable in any point of the course, I'm not sure that it's very relevant - maybe mention it, but not actually go through a demonstration or anything.
+ Worksheet would review the concepts learned in lecture 1 about R, while asking them to use different code chunk options, headers, etc... the "deliverable" would actually be the lecture worksheet in (a) HTML and (b) PDF.
+ **Proposed outline**:
  + Output formats, markdown basics, and cheatsheets (~30 min) - *a mix of explanations / in-class demo*
  + Lecture worksheet (~30 min) - *in breakout rooms of 5/6 people*
  + Finish & style R markdown for the teamwork document + push it to the group repo (~30 min) - *in breakout rooms with group partners*

#### Action items

+ Create a "Class 3" section in Canvas with instructions for the adapted "asking effective questions online" activity (right now the link is to the old guidebook)
+ Create lecture worksheet
+ Decide if there is anything else that should be done as pre-work for this lecture?
