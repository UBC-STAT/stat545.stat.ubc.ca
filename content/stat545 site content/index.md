---
output:
  html_document:
    includes:
      after_body: include/nothing.html
---




# STAT 545 @ UBC: Exploratory Data Analysis

This is the course website for the 2019-2020 edition of STAT 545A and STAT 547M, colloquially known as just "STAT 545", delivered at The University of British Columbia in Vancouver, BC.

These courses are designed to help you:

- explore, groom, visualize, and analyze data
- make all of that reproducible, reusable, and shareable
- using R

### Course Learning Outcomes

STAT 545A:

* Introduction to [R](http://www.r-project.org) and the [RStudio IDE](http://www.rstudio.com/products/rstudio/): scripts, the workspace, RStudio Projects, daily workflow
* Generate reports from R scripts and [R Markdown](http://rmarkdown.rstudio.com)
* Coding style, file and project organization
* Data frames or "tibbles" are the core data structure for data analysis: care for them with the tidyverse
* Data visualization with [`ggplot2`](http://ggplot2.org)
* How to write functions and work with R in a functional style
* Version control with Git; collaboration via [GitHub](https://github.com)

STAT 547M:

* Be the boss of non-numeric data, esp. character and factor
* Interactive pages, apps, and graphics with [Shiny](http://shiny.rstudio.com)
* Get data off the web and expose data, code, results on the web
* Distribute data and code via an R package
* Automate an analytical pipeline, e.g. via `Make`

### Class Meetings

STAT 545A:

- Runs from September 3 until October 17, 2019.
- Held in ESB 2012
- Timing: 0930-1100

STAT 547M: 

- Runs from February 25 until April 8, 2020.
- Held in Woodward (Instructional Resources Centre-IRC) Room 5
- Timing: 1100-1230

We will end class 10-15 minutes before the end time.

### Prerequisites

There are no official pre-requisites for STAT 545, but most students will have had at least one prior statistics course or comparable experience. 

STAT 547M requires STAT 545A.

### Teaching Team

Here is your dedicated teaching team!

| Teaching Member | Position | Contact | 
|-----------------|----------|---------|
| Vincenzo Coia   | Instructor | Email: <vincenzo.coia@stat.ubc.ca> GitHub: [`@vincenzocoia`](https://github.com/vincenzocoia) Twitter: [\@VincenzoCoia](https://twitter.com/vincenzocoia) LinkedIn: [vincenzocoia](https://www.linkedin.com/in/vincenzocoia/) | 
| Hossameldin Mohammed | Teaching Assistant | GitHub: [`@hsmohammed`](https://github.com/hsmohammed); [LinkedIn](http://linkedin.com/in/hossameldin-mohammed-4a091160) |

### Office Hours

Want to talk about the course outside of lecture? Let's talk during these dedicated times. You're always welcome to schedule one-off meetings with us, too.

STAT 545A:


Person     Date                           Time        Place    
---------  -----------------------------  ----------  ---------
Vincenzo   Thursday, September 5, 2019    1200-1300   ESB 3172 
Vincenzo   Thursday, September 12, 2019   1200-1300   ESB 3172 
Vincenzo   Thursday, September 19, 2019   1200-1300   ESB 3172 
Vincenzo   Thursday, September 26, 2019   1200-1300   ESB 3172 
Vincenzo   Thursday, October 3, 2019      1200-1300   ESB 3172 

STAT 547M:


|Person |Date |Time |Place |
|:------|:----|:----|:-----|

### Assessments

Here's how we come up with the final grade you'll receive for each course. For specifics on each assessment, check out the "Assessment" tab in the navigation bar.

__STAT 545A__

| Assessment      | Weight |
|-----------------|--------|
| 5 Assignments   | 75% (15% per assignment) |
| 10 Peer Reviews | 15% (3% per assignment) |
| Participation   | 10% |

There is no final exam for either course.

Auditing students must still complete and submit all assessments, to be graded on a pass/fail basis. 

__STAT 547M__

The 2019/2020 academic year is to be determined, but in the 2018/19 academic year, the layout was the same as STAT 545A, except we took the best 4 of 5 assignments.

### Class Meeting Details

Here are the topics for each class meeting. You can find the notes on the navigation bar above. 

**NOTE:** Be sure to Bring a laptop to every class!

There will always be two TA's in class to help students with the live coding exercises. 

__STAT 545A__:

| Meeting No.         | Date         | Topic | 
|---------------------|--------------|-------|
| 01 | sep-03 tues    | Intro to course and software |
| 02 | sep-05 thurs   | Markdown and GitHub |
| 03 | sep-10 tues    | Getting familiar with R & RMarkdown |
| 04 | sep-12 thurs   | The git workflow; collab with GitHub |
| 05 | sep-17 tues    | working with data in R; `dplyr` and the `tidyverse` |
| 06 | sep-19 thurs   | ggplot2, Part I |
| 07 | sep-24 tues    | ggplot2, Part II |
| 08 | sep-26 thurs   | Grouping of tibbles |
| 09 | oct-01 tues    | Tidy data, reshaping |
| 10 | oct-03 thurs   | Guest Lecture: Rashedul, on table joins |
| 11 | oct-08 tues    | Advanced R programming; file I/O |
| 12 | oct-10 thurs   | The joy of Factors |
| 13 | oct-15 tues    | Revisit ggplot; plotly; practicalities of daily figure-making |
| 14 | oct-17 thurs   | The model-fitting paradigm in R; `broom`; deep thoughts about data analytic work |

__STAT 547M__:

| Meeting No.         | Date         | Topic | 
|---------------------|--------------|-------|-----------|
| 01 | feb-25 tues  | Writing your own R functions |
| 02 | feb-27 thurs | Regular expressions and character data |
| 03 | mar-03 tues  | purrr, list-columns, nested data frames: Part I |
| 04 | mar-05 thurs | purrr, list-columns, nested data frames: Part II |
| 05 | mar-10 tues  | Build your first R package: Part I |
| 06 | mar-12 thurs | Build your first R package: Part II |
| 07 | mar-17 tues  | shiny apps, and related tools: Part I |
| 08 | mar-19 thurs | shiny apps, and related tools: Part II |
| 09 | mar-24 tues  | Automate tasks and pipelines: Part I |
| 10 | mar-26 thurs | Automate tasks and pipelines: Part II |
| 11 | mar-31 tues  | Get data from the web: Part I |
| 12 | apr-02 thurs | Get data from the web: Part II |


## Course Mantras

Here are some philosophies that will get you far in data analytic work. We will be revisiting these over and over again. 

- Embrace plain text.
- Source is real. Think in terms of source and output. 
- Your analysis should be reproducible. Document, test, and leave a breadcrumb trail (version control), even when you are the only collaborator. 

## Conversation, and Getting Help

Are you stuck? First, try to get unstuck by yourself by following the advice of [stat545.com: help-general](http://stat545.com/help-general.html).

While you are getting started, we recommend you seek help within the STAT545 community first, before, e.g. posting to external forums. We are more cuddly.

The instructor and TAs stand ready to assist you, but your peers will also be a great source of good questions and answers. For that reason, we encourage you to seek help in ways that are visible to others. 

The options are sort of listed in order of preference. But we realize every situation is different and your comfort level with these approaches will change as you learn more.

1. Want to talk about content/coding issues? Post an Issue in the [Discussion](https://github.com/STAT545-UBC/Discussion) (public) repository.
2. Want to talk about the course? Post an Issue in the [Discussion-Internal](https://github.com/STAT545-UBC/Discussion-Internal) (private) repository.
3. Want to talk in person? Come visit us during office hours!
4. Want to privately contact Vincenzo? Feel free to send me an email.
    - I look forward to receiving your email, though I do encourage you to post in one of the `Discussion` repositories unless it's really not appropriate for either platform. 


### Basic Issue workflow

Some advice on opening an Issue on GitHub:

* Give it a specific title.
  - BAD: "aaaaaarrrrrrgh!", "things not working", "i need help"
  - GOOD: 'error when indexing a matrix: "incorrect number of dimensions"'
* Stay specific and be complete-but-concise in the body of the description. Don't expect your helper to play 20 questions with you.
* (Optional) Tag someone: 
	- To get the attention of the teaching team, add the `@2018_teaching_team` tag to notify all five of us.
* Don't just create Issues -- also respond to them! Think about this in terms of adding to the conversation, not in terms of "correctness". 
* Don't forget to click "Submit new issue"!

Typically, this will trigger an email to the person/team you tagged. The title of your issue will be in the subject line, so I repeat, *make it specific*. Your description will become the body of the email. At the bottom will be a link to the issue on GitHub.

If all goes well, your helper will respond. I almost always do this directly via GitHub, though simply replying to the email basically works. In any case, this back-and-forth will show up as a series of comments on your original issue. It's like an email dialogue but better:

* It's embedded in a relevant Organization/project/repo, so it will be easier to find later vs. digging out of your giant vat of unfiled email.
* It's potentially visible to others (depending on the repo), which could save us from asking/answering the same questions repeatedly.
* The whole discussion will be mirrored via email, so that still serves as a great way to prompt participants to tune in.
* Later you can get fancy and refer to commits and other issues within the repo in slick ways.
  
Once the problem is resolved, the issue can be closed. Note that closed issues remain accessible, in case anyone needs to consult them in the future.

## Annotated Resources

Here are the resources we will be referring to throughout the course, along with a brief description of the resource. 

Overarching resources:

1. <http://stat545.com>
    - As mentioned earlier, this website can be thought of as a textbook for STAT 545/547.
2. [R for Data Science](http://r4ds.had.co.nz/) (aka "r4ds"), by Garrett Grolemund and Hadley Wickham.
    - STAT 545/547 closely mirrors the topics of this book, making this book more of a true "textbook" for the course.

https://whattheyforgot.org/

Resources for more specific topics:

1. [Happy git with R](http://happygitwithr.com/), by Jenny Bryan and the STAT 545 TA's
    - Great for marrying git, GitHub, R, and RStudio in your workflow.
2. [Advanced R](http://adv-r.had.co.nz/), by Hadley Wickham
    - If you want to learn more about R as a programming language, this is a very readable and concise way of doing so.
3. [ggplot2 book](http://webcat2.library.ubc.ca/vwebv/holdingsInfo?bibId=8489511), by Hadley Wickham
    - Useful for digging deeper into `ggplot2`.
4. [RMarkdown book](https://bookdown.org/yihui/rmarkdown/), by Yihui Xie et al.
    - Brand new! Looks like a comprehensive resource for everything R Markdown related. 
5. [R packages](http://r-pkgs.had.co.nz/) by Hadley Wickham
    - Readable, approachable help for making R packages.
6. [Advanced R](http://adv-r.had.co.nz/), by Hadley Wickham
    - If you want to learn more about R as a programming language, this is a very readable and concise way of doing so.


Repo that creates this website: <https://github.com/STAT545-UBC/STAT545-UBC.github.io>

The course organization on GitHub: <https://github.com/STAT545-UBC>  


## Attribution

Jenny Bryan deserves a huge amount of credit for founding and developing both STAT 545A and 547M over many years, along with her TA's. Some of their content is even being used in this very syllabus. Thank you!
