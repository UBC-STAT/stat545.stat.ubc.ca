---
---
---

# STAT 545A Collaborative Project: Milestone 1

**Points**: 100

## Welcome to the Collaborative Project!

By completing this project, students are expected to be able to:

1.  Collaborate on a project with a partner using the git + GitHub workflow.
2.  Troubleshoot broken R code.
3.  Rewrite code to address instructions.

This is the first of two milestones for completing this project.

## Exercise 1: Getting Setup

**5 points**

0. We will be assigning students to teams randomly. Team assignments  are on canvas in the entry called [Groups for Collaborative Project]().

For both collaborative project milestones, you'll be working with your teammate(s) on the same GitHub repository (or "repo"). One person in the team will need to make the repository; the other(s) can then join that repo.

1.  Have one group member make a repository on GitHub, by following the steps found on canvas in the entry called [Collaborative Project: Create a repository for your team](https://canvas.ubc.ca/courses/126199/pages/collaborative-project-create-a-repository-for-your-team). One completed, your repository should automatically be listed as part of the [stat545ubc-2024 Organization](https://github.com/stat545ubc-2024).

2.  That same group member must now add their teammates to the repository as collaborators. To do this:

    1.  Go to your repository's homepage. The URL is probably <https://github.com/stat545ubc-2024/collaborative-groupX>, where X is your group number.
    2.  Go to "Settings" -\> "Manage Access"
    3.  Click the green "Invite teams or people" button.
    4.  Input one teammate's github username (you'll have to do one at a time).
    5.  When asked to "choose a role", click "Admin" (because each teammate should have full access to the repository).
    6.  Make sure you've added everyone in your team.

**Grading**:

-   All points go towards the existence of the repository, with all teammates involved as collaborators.

## Exercise 2: Markdown Formatting

**15 points**

*Read this exercise, but do it last*.

Between your `README.md` and `TEAMWORK.md` files, showcase at least five functionalities of GitHub-flavoured markdown (so, you don't need to consider this exercise until you begin writing these files, as described in other exercises). The [markdown cheatsheet](https://enterprise.github.com/downloads/en/markdown-cheatsheet.pdf) might help here, or, the *Help* menu in RStudio will bring up a Markdown Quick Reference at any time.

**Grading**:

-   1 markdown feature: 4 points
-   2 markdown features: 7 points
-   3 markdown features: 10 points
-   4 markdown features: 13 points
-   5 markdown features: 15 points

## Exercise 3: Merge one Pull Request per teammate

**30 points**

*Read this exercise, but do it last*.

Every teammate should submit at least one pull request for this milestone, and have a **different** teammate merge the pull request after reviewing the contents of the pull request. So, like the previous exercise on Markdown Formatting, this exercise is not stand-alone. You'll need to decide who will work on what (more on this when you make your teamwork document).

As a reminder, in order to make a pull request, you'll need to:

1.  Make a new branch, *before you start working on your tasks!* (So that you capture your work within the branch.)

-   You can do this either on GitHub, or on your own computer using git.

1.  Make changes to some files on the new branch.

-   You can do this either on GitHub or on your own computer (locally), but if you do this locally, you'll need to remember to push your work (on the branch) to GitHub.

1.  Start a pull request on GitHub, by going to "Pull Requests" -\> "New Pull Request", and selecting the branch you intend to merge to the main branch. In your pull request, include a comment and title indicating (at a high level) what this change you made is about.

2.  Also in the comments, include some indication as to which teammate will be responsible for checking and merging the new work contained in the pull request.

    -   Perhaps you've already decided up front who will be reviewing who's work.
    -   Or perhaps (and more realistically), in your comment, you may ask the group at large who would like to volunteer, and then someone will respond.
    -   How you work this out should go in your teamwork document (as described in another exercise).

3.  The teammate responsible for reviewing and merging the pull request does so, being sure to add to the discussion happening in the pull request by adding a comment.

    -   The comment could be as simple as something like "I've reviewed these changes, and everything looks great." Or, it could highlight some issues that were found, in which case the team should work towards resolving the issue.

Here are some ideas of things you can merge:

-   Your initial draft of the README document or TEAMWORK document.
-   Your changes to the troubleshooting exercise.
-   Modifications to any document.

**Note 1**: Work together as a team to get this done. If one of your teammates is having trouble with this procedure, help them out! Sometimes a merge conflict will happen, and it's best to work as a team to figure out how to resolve these issues.

**Note 2:** Please indicate to the TAs which PRs you would like to be graded by adding "(GRADED)" to the PR name. 

**Grading**:

-   4 points awarded for the creation of a complete set of pull requests (i.e., one pull request per teammate).
-   14 points awarded for the successful merging of a complete set of pull requests.
-   4 points awarded for the comment(s) kicking off the pull request.
-   4 points awarded for the follow-up comment(s) from a reviewer.
-   4 points awarded if each teammate gets the chance to act as a reviewer/merger of someone else's pull request.
-   *Penalty* of up to 4 points if the total amount of work contained in pull requests does not amount to much. We just want to make sure that, when you're working on this project, you're largely working on branches. It's OK to commit directly to the main branch without a pull request, but this should be the exception, not the norm.
-   *Penalty* of 1 point if you have not indicated to the TAs which PRs you would like to be graded by adding "(GRADED)" to the PR name. 

## Exercise 4: GitHub Issues

**15 points**

GitHub Issues are a useful way to communicate with your team. They should be used for messages about your project that deserve some permanence and reference.

Examples of messages that might not be best for GitHub Issues:

-   "Can you remind me where to find the instructions for this milestone?"
-   "I think I need a nap -- I might be a couple hours late with the pull request."
-   "So, what do you think about this crazy weather we've been having??"

Examples of messages that do belong on GitHub Issues:

-   "I noticed a problem with how we worked on Milestone 1. How can we go about fixing these?"
-   "Here are my ideas for things to include in the README file -- do you have any other ideas?"
-   Meeting agendas

Your task in this milestone is to introduce yourself in a GitHub Issue:

1.  Each team member should write a new Issue introducing themselves briefly. Tag each of your teammates in the body of your Issue. (**12 points for a complete set of introductions**)
2.  Each team member should respond to everyone's introduction Issue. (**3 points for a complete set of responses; 2 if not many are missing; 1 if more than half are missing**)

## Exercise 5: Teamwork Contract

**15 points**

Whenever you embark on a project with a team, it's always a good idea to establish a teamwork contract so that you can establish your expectations and get the team on the same page. This should be a living document -- your team should revisit the teamwork contract as you establish a better or more realistic way of working together.

1.  Make a new document in the root of your repository called `TEAMWORK.md`. (**5 points for the file's existence**)
2.  Fill in the document with guidelines as to how you will work together. (**10 points awarded for thoughtfulness and clarity**)

Be sure to include at least the following two aspects of working together:

-   **Division of Labour**: How will you divide the work required for this milestone? Be sure to include what work will be done individually, so that the work in each teammate's pull request has been identified.
-   **Timing**: When will you each aim to submit your pull requests, keeping in mind that another teammate will need to review your work? *Warning: Do not submit your part of the project last-minute. Your teammate's review of your work may not be trivial: if there are errors, your team will need time to debug them.*
-   **Communication**: How will you communicate with each other? For example, will you be using both Slack and GitHub Issues? For what, exactly? How long will it realistically take you to respond to a message? Will you hold a regular meeting, or rely exclusively on asynchronous communication?

## Exercise 6: Troubleshooting document

**9 points**

1.  Put the [`troubleshooting-1.Rmd` document](https://raw.githubusercontent.com/UBC-STAT/stat545.stat.ubc.ca/master/content/collaborative-project/milestone1/troubleshooting-1.Rmd) in your repository. (You can either download this file, or just copy and paste its contents into a new file that you call `troubleshooting-1.Rmd`.)
2.  Fix all three errors in the `troubleshooting-1.Rmd` document, as outlined in the document. (**2 points per error**)
3.  Knit the document to an md file (just click "knit" in RStudio). (**3 points; only 1 point if the document is not up-to-date with its Rmd source.**)

## Exercise 7: README file

**9 points**

In the root of every project should be a README file that provides context and how-to instructions for the project. To write one of these, imagine that you stumble upon this project in 2 years from now; or, imagine that you're about to hire someone to come on board the project, and they've just opened up your project folder. What are the things that future-you or future-teammate must know about this project? These sort of things go in the README.

1.  Your repository should already be seeded with a blank `README.md` file. In this file, include a brief description of the repository + project by including at least these three elements:

    -   What is this project?
    -   What files are in the project folder / GitHub repository, at a high level?
    -   How can they run code that appears in your folder / GitHub repository? Again, at a high level.

Your README file might be about the length of a paragraph in total.

**Grading**: 3 points awarded for how well each element efficiently orients a newcomer to your project.

## Exercise 8: Submitting this Milestone

**2 points**

To submit this Milestone, you'll be tagging a release on your GitHub repository, and adding a link to the release on canvas.

*How to tag a release*:

1.  Navigate to the main page (root) of your collaborative GitHub repository.
2.  There should be a small link on the right-hand-side of your page that says "Create a new release". Click that.

-   You might also be able to get to the same place by clicking on the "tags" link beside where your branches are listed.

1.  For the tag version, put `m1.0` (for "milestone 1.0").

2.  Choose a release title and description (this is less important).

3.  Do **not** check off "This is a pre-release".

4.  Click "Publish Release".

5.  Put a link to that release as a submission on the Collaborative Project Milestone 1

    -   You won't lose marks for *not* submitting your link to canvas, but it would really help us out if you do this! Thank you!

*If you want to "re-tag" your release*:

If you want to change your submission *after* tagging a release, you can still do this if it's before the deadline. Just increase the secondary version number by one -- so, make the tag version `m1.1`, then `m1.2`, etc.

**Grading**: 2 points awarded for tagging a release.

## Attribution

Thanks to Icíar Fernández Boyano for coming up with much of the ideas behind this collaborative project.
