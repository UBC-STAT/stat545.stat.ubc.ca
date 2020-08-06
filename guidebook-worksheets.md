## Introduction 

The purpose of this document is to **revise the [STAT545 guidebook](https://stat545guidebook.netlify.app/index.html)**, with the goal of having an outline to **adapt the current material into lecture worksheets, videos, and in-class demos.**

+ Each "class meeting" will be reviewed, with each subsection being marked as:

  i. Worksheet material - the section should be adapted to the worksheet format.
  
  ii. Video material / Pre-readings - the section should be adapted into a video or document for pre-reading material.
  
  iii. In-class demos - sections that are fit to be presented as a class demo.
  
  iiii. To remove - material that doesn't fit into the overall context of the worksheet.

+ Old worksheets linked to class meetings may also be reviewed *at a very high level* whenever relevant, making a few notes as to whether their activities could fit into the new lecture worksheets, just to ensure that this is kept in mind when the new worksheets are created.

This document only contains revisions to the guidebook and notes about the old worksheets, *not* the actual lecture worksheets that will be provided to students in the Fall.

### A few things to keep in mind when revising the guidebook

+ Lecture worksheets are designed to be completed **in-class**, with about 30 minutes per worksheet allocated in a class. This should be taken into account when deciding the amount of guidebook material that can be transformed into a worksheet.

+ Each class meeting usually has a "resources" subsection towards the beginning of the lesson, which I have excluded completely from my revisions - I am working on migrating all the content of these subsections to a resources document separately. 

+ The guidebook is now **deprecated** but remains available, with each "worksheet" from previous years linked in each class - activities from these worksheets could also be migrated to the new worksheets (with the *new* lecture worksheets ultimately being a mix of adapted guidebook material & old worksheet activities). 

## Class Meetings Revised

### General notes

+ Would this be a good document to also include a revision to the learning objectives of each class meeting?

+ If the guidebook is deprecated, I do think that the outline + learning objectives of each class meeting should be included within the lecture worksheet, but *also* presented at the beginning of each lecture.

### Class Meeting 1: Introduction to STAT545 and GitHub
#### Revisions

| Section                 | Adapt to...                   | Notes                                                                            |
|-------------------------|-------------------------------|----------------------------------------------------------------------------------|
| Topic 1: Syllabus       | In-class + Online documents | Display where to find things in the website, discuss flow of a regular class, learning objectives + course structure... And of course each of these would also be available as permanent documents somewhere in the website for students. |
| Topic 2: GitHub         | In-class demo          | I would keep this as is with in-class demos, and instead of breakout rooms just having students use the "yes" button on Zoom to indicate when they're done with each small task (setting up an account, creating a repo...). |
| Topic 3: Asking effective questions online | In-class demo + To-do before next class | I really like the activity within this section, but I would maybe make it asynchronous (so switch to the "to do before next class"), and instead leave more time for students to install R, RStudio and Git while in-class (which is currently within the to-do for next class). |
| To do before next class | In-class + Online documents      | I think that besides going over them in class, the to-dos for next class should be migrated to the same table that we discussed where students would have all the pertinent materials (lecture worksheets, resources, etc) to each class, just so that everything can be found in the same place - with the idea that this would apply to all the lectures. |

#### Additional notes
Since this is the intro class, it wouldn't have a lecture worksheet per se, most of the content can be discussed in class, and the creation / guidebook adaptation of some documents for students. I think I would add the STAT545 (and STAT547) syllabus to the "course structure" part of the website (where office hours / class meeting schedules / policies are listed).

### Class Meeting 2: Introduction to R
#### Revisions

| Section                 | Adapt to...                   | Notes                                                                            |
|-------------------------|-------------------------------|----------------------------------------------------------------------------------|
| Why R?                  | Video                         | A video to watch as "pre-reading" that introduces students to the R language & the very cool things that you can do with it! Not necessarily a stand-alone, but could be the intro to a video that shows how to navigate the RStudio interface. |
| Orientation to R        | In-class demo + Video + Lecture worksheet | A **video** showing the different functionalities of the RStudio interface, from opening a script, showing how to write simple calculations / add comments on a script, and finally closing the app to demonstrate the "do not save your workspace" bit that is currently within the "Finishing up" section. Vectors & all other subsections could be done as **in-class demos** and as part of the **lecture worksheet**. Either **remove** 2.5.10, or include in the video. | 
| Finishing up            | In-class demo | Leave as is & announce the to-dos / pre-readings for next class (although they will still be linked in the main table that we were discussing having in the website). |

#### Proposed outline / additional notes
+ **Pre-reading**: A single video to make students excited about learning R & show the main functionalities of R studio, >= 15 minutes. If easier, this could also be done in the form of a document with screenshots (although I think a video is probably more intuitive).
+ **In-class**: Demo of vectors, functions, subsetting, dataframes, and packages. Then, breakout rooms for students to complete the lecture worksheet, and reconvene in the main room for the last 5 minutes for the finishing up section - alternatively, leave 15 minutes to the end and also explain the R packages section after students have completed the lecture worksheet.
+ **Lecture worksheet**: I think we could build a worksheet inspired on [this swirl tutorial](https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R).
