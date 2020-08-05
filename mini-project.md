## Mini Data Analysis Project: Introduction

The purpose of this document is to design the 2020 proposed **mini data analysis** project that will take the place of the 2019 weekly assignments.

## 1. Learning objectives

+ 2 or 3 learning objectives for the overarching project. These respond to "What should students be learning with this project?".

  + Prepare or tidy data for analysis.
  
  + Apply data manipulation, visualization, and modelling concepts to answer research questions using data in R.
  
  + Report your findings in a clear, reproducible R markdown document.
  
+ A specific and single learning objective for each deliverable. These should be measurable abilities that the student attains at each project milestone.

  + Deliverable 1: Use dplyr's basic data manipulation verbs to explore your data.
  
  + Deliverable 2: Prepare or tidy data for analysis.
  
  + Deliverable 3: Generate questions about your data through exploratory data analysis.
  
  + Deliverable 4: Search for answers by visualising, transforming, and modelling your data.
  
## 2. Deliverables

+ **Submission frequency**: *tbd*

+ **Number**: 4.

+ **Length**: 1 hour of work per deliverable. 

+ **Additional notes**: I'm not sure of how to fit this in, but I found that [this data science's course](http://www.andrew.cmu.edu/user/achoulde/94842/) "What constitutes plagiarism in a coding class?" section under "Collaboration" may be interesting to somehow fit in the project. If not within the scope of the project / not relevant, maybe for the troubleshooting assignment or just as part of the course website, I thought it was relevant. The reason why I thought it may be relevant to at least link it in whatever document is ultimately provided to students about the project is that I believe it's important to understand that when undertaking your own data analysis project.

### 2.1 Framework

Here are two "high-level" options of how the deliverables / milestones of the project could be laid out that I thought may be worth considering prior to designing each specific deliverable. Once this is decided, I will remove the other two options and re-write a general framework / explanation of how the project would work that can also serve as part of a prospective document to present to students.

+ **Option A:** Give all students the exact same dataset and provide some more space for students to explore questions (for example, choosing to answer 3/5 questions about the data, and they can pick which ones).

+ **Option B:** Same as option A, but allowing students to choose their own dataset *within a list of options provided to them* (in STAT547 we were given the option of choosing literally any dataset, but I found this too open-ended and it's hard to know what to look for in the data as a beginner, so it may get very complicated with TAs having to review every data choice).

### 2.2 Milestones

Whichever option is chosen, the idea is that the project milestones would be in the form of deliverables *(platform for submissions tbd)*. I thought that 4 deliverables (4 hours, rounding up to 5 if students take more time - but being very careful to try and minimize this) may be good.

+ For either option A or B, my very high-level idea at the moment is:
  
  + Deliverable 1: Using dplyr to answer a few basic exploratory questions about the dataset, the primary goal being that students become familiar with dplyr tools and what a reproducible R Markdown document looks like. 
  
  + Deliverable 2: Tidy data - get the dataset ready for manipulation / visualization / modelling.
  
  + Deliverable 3: Using manipulation (dplyr) and visualization (ggplot) to explore the data in more depth. Are variables continuous or categorical, and how may they be visualized based on this? Are there any outliers or missing values in the data? I think [this resource](https://r4ds.had.co.nz/exploratory-data-analysis.html#questions) may be useful as inspiration for this deliverable R markdown file.
  
  + Deliverable 4: Answering research questions about the data through visualization (ggplot) & fitting a model. 
  
+ **Next steps:** Once the framework is decided & the content of the deliverables is discussed, I think the natural first step would be writing the R Markdown for deliverable one. Some ideas for this:
  
  + An R markdown document as would be written in a reproducible data analysis project, with clearly divided sections and a description of what each section entails.
  
  + As the deliverables progress, students would not only be building on their coding skills, but also on their ability to maintain a tidy and reproducible R Markdown; the first deliverable may contain the majority of the sections and descriptions all laid out with the chunks of code being the only portion to be completed; the second one could provide a few more "open" tasks (yet still with concrete outcomes, such as producing a table that follows the principles of tidy data) - students could then add how their table meets the principles in their own words (this is only an example)...
  
  + I think the key to it being a mini-project yet keeping the flavour of assignments can be done through writing a more "creative" but still easily measurable and specific assignment: as the scripts advance, you could specify that you want the students to answer 3 research questions, but instead of specifying which questions, provide a few examples of common questions that you may want to find out from your data, with the actual "deliverable" having specific parameters: code that answers each question cannot exceed x lines (slightly arbitrary, but can control for students trying to investigate questions that are too complex), a single plot may be produced from each question (which is useful because often when research is narrowed down to publications, you cannot show everything that you've generated...)
  
  + Some sources of datasets that I have compiled so far:
  
    + https://www.springboard.com/blog/free-public-data-sets-data-science-project/
    + https://www.dataquest.io/blog/free-datasets-for-projects/
    + https://www.gapminder.org/data/
    + https://github.com/hadley/tidy-data
    
### 2.3 Considerations

These are some points that I found interesting to think ahead and then be able to revisit once the deliverables have been fully designed, so that we are able to adapt them as needed.

+ Are the deliverables aligned with the learning objectives?
+ Do the deliverables build skills in a logical order?
+ Is the workload manageable *for students*? Is the grading burden manageable *for TAs*?
+ Are parameters specified? As another way to avoid open-endness, things like produce minimum one plot and maximum two to avoid students going to great lengths and thinking that will get them better marks - make it very specific. 

## 3. Scheduling

## 4. Grading criteria
