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
