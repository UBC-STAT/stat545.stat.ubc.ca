# STAT 545A Collaborative Project: Milestone 2

**Deadline**: Saturday, October 1, 2022 at 18:00 PT

**Points**: 100

By completing this project, students are expected to be able to:

1.  Collaborate on a project with a partner using the git + GitHub workflow.
2.  Troubleshoot broken R code.
3.  Rewrite code to address instructions.

This is the second of two milestones for completing this project.

## Exercise 0: Merge one Pull Request per teammate

**30 points**

*Read this exercise, but do it last. This exercise is identical to the one in Milestone 1.*

Every teammate should submit at least one pull request for this milestone, and have a **different** teammate merge the pull request after reviewing the contents of the pull request. So, like the previous exercise on Markdown Formatting, this exercise is not stand-alone. You'll need to decide who will work on what (more on this when you make your teamwork document).

As a reminder, in order to make a pull request, you'll need to:

1.  Make a new branch, *before you start working on your tasks!* (So that you capture your work within the branch.)

-   You can do this either on GitHub, or on your own computer using git.

1.  Make changes to some files on the new branch.

-   You can do this either on GitHub or on your own computer (locally), but if you do this locally, you'll need to remember to push your work (on the branch) to GitHub.

1.  Start a pull request on GitHub, by going to "Pull Requests" -> "New Pull Request", and selecting the branch you intend to merge to the main branch. In your pull request, include a comment and title indicating (at a high level) what this change you made is about.

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

**Note 2:** Indicate which pull request you would like graded for Collaborative Milestone 2 in the title.

**Grading**:

-   4 points awarded for the creation of a complete set of pull requests (i.e., one pull request per teammate).
-   14 points awarded for the successful merging of a complete set of pull requests.
-   4 points awarded for the comment(s) kicking off the pull request.
-   4 points awarded for the follow-up comment(s) from a reviewer.
-   4 points awarded if each teammate gets the chance to act as a reviewer/merger of someone else's pull request.
-   *Penalty* of up to 4 points if the total amount of work contained in pull requests does not amount to much. We just want to make sure that, when you're working on this project, you're largely working on branches. It's OK to commit directly to the main branch without a pull request, but this should be the exception, not the norm.

## Exercise 1: Troubleshooting document

**58 points**

1.  Put the [`troubleshooting-2.Rmd` document](https://raw.githubusercontent.com/UBC-STAT/stat545.stat.ubc.ca/master/content/collaborative-project/milestone2/troubleshooting-2.Rmd) in your repository. (You can either download this file, or just copy and paste its contents into a new file that you call `troubleshooting-2.Rmd`.)
2.  Fix all the errors in the `troubleshooting-2.Rmd` document, as outlined in the document. (**55 points, errors are equally weighed**)
3.  Knit the document to an md file (just click "knit" in RStudio). (**3 points; only 1 point if the document is not up-to-date with its Rmd source.**)

## Exercise 2: README file and tidy submission

**10 points**

-   Update your README file to reflect any changes that have happened in your repository. This will probably only be a very small change, and that's OK. (**5 points**)
-   Your repository is clean and organized. For example, there aren't any "old" files, and there are no relics (such as, if you once output to html, but no longer, then if present, that html file is an unnecessary relic). (**5 points**)

## Exercise 3: Submitting this Milestone

**2 points**

To submit this Milestone, you'll be tagging a release on your GitHub repository, and adding a link to the release on canvas.

*How to tag a release*:

1.  Navigate to the main page (root) of your collaborative GitHub repository.
2.  There should be a small link on the right-hand-side of your page that says "Create a new release". Click that.

-   You might also be able to get to the same place by clicking on the "tags" link beside where your branches are listed.

1.  For the tag version, put `m2.0` (for "milestone 2.0").

2.  Choose a release title and description (this is less important).

3.  Do **not** check off "This is a pre-release".

4.  Click "Publish Release".

5.  Put a link to that release as a submission on the Collaborative Project Milestone 1

    -   You won't lose marks for *not* submitting your link to canvas, but it would really help us out if you do this! Thank you!

*If you want to "re-tag" your release*:

If you want to change your submission *after* tagging a release, you can still do this if it's before the deadline. Just increase the secondary version number by one -- so, make the tag version `m2.1`, then `m2.2`, etc.

**Grading**: 2 points awarded for tagging a release.
