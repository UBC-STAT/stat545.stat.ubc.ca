# Proposed New Course Outline

### Course Evaluation

__Old Evaluation (for both courses)__

1. Participation, 10%
    - 7% is whether they attempted the worksheets. Not about correctness.
    - 3% is about repo organization
2. Peer review, 15%
    - Students reviewed 2 other homework submissions per homework, by writing comments in an Issue in the reviewee's repo.
3. Assignments (5), 75%
    - Asked students to answer some questions. 

__New Evaluation (for both courses)__

These are technically the only things that are mandatory in the course. You technically do not need to engage with any of the learning outlets we have set up.

| Deliverable        | Submission Frequency | Percent Grade | Description |
|--------------------|----------------------|---------------|-------------|
| Lecture worksheets | weekly               | 10            | Takes the place of the old "participation" deliverable. Autograded walkthroughs to guide student learning. |
| Assignments        | weekly               | 40            | Students answer questions. Recycle much of previous assignments, perhaps more pared-down and streamlined to make way for the group project. |
| Group Project      | three(?) checkpoints | 50            | Creatively analyse data. Contains peer review, but in a more natural way than before, as they review each other's work. Actually get to experience the full extent of data analysis and GitHub. |

\*\* Although there are only 3 checkpoints for the project, there will be new prompts weekly based on the new material learned.

### Participation 
#### % Grade: 15

+ **Overarching goal**: To assess students' engagement with the course and simultaneously create connection with students (draw their interest in the course).

| Learning Objective                                                                 | Deliverable             | Submission frequency | % Grade |
|------------------------------------------------------------------------------------|-------------------------|----------------------|---------|
| Demonstrate understanding of lecture material through direct application in RStudio| Lecture worksheets      | weekly               | 10      |
| Review previous class material                                                     | In-class quiz           | in-class             | 5       |

+ Use nbgrader for autograding of lecture worksheets locally to avoid issues with the server. 
+ In-class quizzes increase students' attention and could be used as a way to revise past content - some platforms that are easily accessible are Kahoot or Mentimeter, and Zoom also has poll + quiz features. I would set this either at the beginning of the class or during a 5 minute break, just a couple easy questions, and points won't be given for right answers but simply for participating. 

### Group Project / Troubleshooting Challenge
#### % Grade: 35

+ **Overarching goal**: To assess students' ability to collaborate on GitHub + to identify common coding errors & apply their knowledge to solve them. This assessment would double as a group project, and substitute the old peer review portion of the evaluation in STAT545.

+ **Learning objectives**:

  1. Implement a collaborative workflow for working on GitHub.
  2. Identify and troubleshoot coding errors.

| Deliverable | % Grade  | Group / Individual | Description                                                                   | Aligns with LO... |
|-------------|----------|--------------------|-------------------------------------------------------------------------------|-------------------|
| Repo        | 5        | Group              | Organization, commit history, READMEs                                         | 1                 |
| TB1         | 10       | Group + Individual | Troubleshooting exercise 1 - A script centered on dplyr usage with errors     | 2                 |
| TB2         | 10       | Group + Individual | Troubleshooting exercise 2 - A script centered on ggplot usage with errors    | 2                 |
| TB3        | 10       | Group + Individual | Troubleshooting exercise 3 - A script that revises all (or almost all) class material | 3          |

+ **Deliverables in detail**:

  + Repo:
    + Create a repository.
    + Create a README outlining the purpose of the repo.
    + Create a teamwork document where you establish a code of conduct and expectations.
    + *Additional notes*: This repo could be created in-class during the version control workflow lecture (lecture 4).
    
  + Troubleshooting exercises:
    + Each troubleshooting script would be focused on a "topic" from the lectures (TB1 could be focused on dplyr usage, TB2 could be ggplot usage)
    + In this way, the submission frequency would be weekly for the first 2 (lectures for dplyr --> TB1 / lectures for ggplot --> TB2), and then leave a few weeks in between for the last one so that more material is revised. Alternatively, it could also be made biweekly if it seems like it would be too much work with the assignments.
    + The "group" component would be the commit history & the "individual" component would be the actual troubleshooting - for each of the TBs, they would have to specify who has done what tasks (expected to be divided evenly), and they would be graded based on that.
    + I don't think I would leave in-class time for these because the point of collaborating on GitHub is being able to do it asynchronously, and the way in which students decide to do this (for example, setting personal deadlines so that they can each review each other's work prior to the official deadline) should be outlined in their teamwork document.
    
+ **Grading components within each troubleshooting exercise**:

   + Teamwork: Did students complete the work in a balanced way?
   + Organization: Does the commit history make sense? Were pull requests used effectively?
   + Correctness: Did students successfully troubleshoot the code?
   
   
### Assignments
#### % Grade: 50

*A few general notes / ideas*

+ Frequency would remain weekly.
+ If there will be 5 assignments in total (each 10%) and the course is 7 weeks, attempt to alternate at least with 2 of the TB1 + TB2 from the group project / troubleshooting challenge if possible so that students don't have to work on that + an assignment. It may have to overlap at least for 1 week, but something to keep in mind.
+ It would be nice if the assignments themselves could link into a mini-project, perhaps not all of them, but for example having the last 3 be continuous and be a sort of mini data-wrangling + visualization project. 
    
### Project

Students develop an analysis, collaborating on GitHub.

Ideas for project checkpoints:

1. Repo creation
    - README, teamwork document, code of conduct, licence?
2. EDA 1
3. EDA 2 

Project breakdown:

| Deliverable | Percent Grade | Group or Individual grade? | Description |
|-------------|---------------|------|-------------|
| Peer Review | 5             | Individual | Everyone reviews at least one pull request. |
| Teamwork    | 5             | Individual | Were you an active participant in the group? |
| Vis         | 10            | Group      | How effective are your visualizations? |
| Code Quality | 10           | Group      | Is your code readable and clean? Organized? |
| Code Accuracy | 10          | Group      | Does your code work? |
| Analysis Writing (Rmd) | 5  | Group      | Do you guide a reader through your analysis, with good English? |
| Repo        | 5       | Group      | Is your repo organized? With commit history? Are there helpful README's, one main, and one for each top-level folder? |

### Changes to course delivery

__Old__:

Asynchronous learning: 

- Optional readings (lecture notes available in a "guidebook"; other resources made available)

Synchronous learning:

- Lectures:
    - Teaching from guidebook (first half)
    - Live coding by filling in lecture worksheets (second half)
- Office hours held by TA's, 3 per week.

__New__:

Asynchronous learning:

- Self-learning before "lecture" (mandatory):
    - Improved guidebook containing tutorials and learning outcomes (current version at stat545guidebook.netlify.app)
    - Short videos parallel to the guidebook: (1) motivation for the topic, and (2) teaching the topic.
- Asking questions via a STAT 545 slack channel.

Synchronous learning:

- Lectures:
    - 30-minute live demo and questions.
        - Instructor works on a real analysis. Perhaps over time, these build up to an analysis similar to their project. 
        - Students ask questions and pose challenges real-time. TA acts as moderator. 
        - Discussion in a chat are processed by a TA: (1) answer "easy" ones directly, (2) put others in a queue (that the TA also manages and asks on behalf of the student).
        - Oral questions taken via "raising virtual hand", also managed by the TA. 
    - 5-minute break (play [Random Acts of Exercise](https://www.youtube.com/playlist?list=PL6JWPcX0WhHU97aqiRA4P6Jta9f04Nanm). Each body is different, so make this your practice by modifying the activity based on what your body can do.)
    - 45-minute "lab"; work on lecture worksheet.
        - Each teaching member goes through random groups of 3 or 4 students in turn, coming in with some discussion points, but also allowing a natural conversation to unfold about the worksheet, as well as perhaps how the course is going. 
        - At the same time, perhaps a TA can hold their office hour, so that students who have questions that they don't want to ask in a breakout group can go to that TA.
- Office hours:
    - Two teaching members staff an office hour soon before the assignment deadline. Need to think more about specifics (one member holds group conversations, while another takes individual? Maybe even host bonus material?)
    - Should act as an outlet for those from reverse time zones, in case they decide the graveyard shift isn't worth the synchronous sessions.
    - Also used for tech support. 


Community building:

- Already discussed above:
    - Slack for asynchronous discussions
    - Breakout rooms on Day 1 to introduce yourself
    - Teaching-member-led small breakout groups in "lab" portion of lecture to facilitate discussion.
    - Chat and questions during lecture demo.
    - Groupwork on project
- Reach out to students who stop submitting work (needs to be the instructor who does this)
- Announcements made via canvas (not GH Issues, to reduce the number of outlets students need to interact with).

__Future years__: Keep things similar, except synchronous part to be held in-person.

- Lecture done in-person, but with the same structure. 
    - Live demo: Still use chat (Slack) so that students can ask questions if they don't want to speak up; still use TA to moderate these.
    - Lab part: allow breakout groups to happen just by people's physical presence; 2 teaching team members check in person-by-person, while one keeps watch for hands.


### To develop

Easy:

- Re-organize repos:
    - Put instructor repo on /UBC-STAT.
    - Rename stat545.stat.ubc.ca repo to just that.
    - Put guidebook as stat545.stat.ubc.ca/guidebook???

Team Sonja:

- Make closed captioning on videos
- Write tests for autograded questions. 
    - We provide the solution for each question, which is an R object, and you write a test to make sure that the R object is what it's supposed to be. One example: perhaps an answer is `a <- 5.2` -- you would write a test to ensure that `a` is in fact `5.2`. Or another example: students make a `ggplot2` object, and you write a test to check that it has certain components.
    - I can provide guidance for how to do this.

- Update LMS -- draw on STAT 201.
    - Make a docker container
    - Make autograding questions for worksheets.


GAA:

- Help propose alternative structure of deliverables (I have a proposed structure already, but would like more eyes on it).
    - Time breakdown of student engagement.
- Update and modernize the learning objectives for the course.
- Pitch the LO changes and deliverables to Paul
- Update the guidebook ("lecture notes") to reflect the updated learning objectives. 
- Update worksheets for each week (can draw from existing worksheets)
- Update assignments
- Develop infrastructure for a group project (if we decide to make this part of the course)
- Organize all material in a student-facing platform (website? canvas? hybrid? other?).
- COVID emergency plans:
    - Contingency plan in case teaching member gets sick. Or a student.
    - How can we help reduce stress due to COVID? Give students one "free pass" on missing a submission?
- How can we engage with students who don't have a webcam or mic? They should still join zoom, but breakout rooms would be different -- they should use chat, but I need to somehow mention this.

Vincenzo: 

- Create videos
- Create "intro" presentation:
    - Teaching covenant
    - Academic integrity
    - Diversity statement (you belong)
- Specify tech requirements on the website (and add to the intro presentation)
<<<<<<< HEAD
=======
- Class is not to be held on Imagine Day to facilitate involvement in Imagine day activities. (Send FSC email letting everyone know, as well as a link to Imagine Day activities)  

>>>>>>> 1452372b75ac3b8854031b64ffec4c159ca9d3ba
