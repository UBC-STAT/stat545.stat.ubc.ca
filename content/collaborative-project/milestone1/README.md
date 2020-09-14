# STAT 545A Collaborative Project: Milestone 1

__Deadline__: Friday, September 18, 2020 at 23:59 PST

__Points__: 30

In this milestone, you and your teammates will be taking charge of your collaborative GitHub repository. You'll also do a small troubleshooting exercise to help you warm up to the larger troubleshooting exercises of Milestones 2 and 3.

In this document, you'll find instructions for completing this milestone.

## Claim your GitHub Repository

For all three collaborative project milestones, you'll be working with your teammate(s) on the same GitHub repository. One person in the team will need to make the repository; the other(s) can then join that repo.

__Note__: Only students who are registered for the course (including those auditing) can claim a repository for this project.

1. Log on to [canvas](https://canvas.ubc.ca) and go to `STAT 545A` -> `Assignments` -> `Collaborative Milestone 1`
2. Continue with the instructions found there. 


## Teamwork Contract

__5 points__

Whenever you embark on a project with a team, it's always a good idea to establish a teamwork contract so that you can establish your expectations and get the team on the same page. This should be a living document -- your team should revisit the teamwork contract as you establish a better or more realistic way of working together. 

#### Your Task

Make a new document in the root of your repository called `TEAMWORK.md`. 

Establish guidelines with your teammate(s) as to how you will work together by including at least 3 aspects of working together. For example, you can establish:

- __Communication__: How will you communicate with each other? Will you have different mediums for different purposes? How long will it realistically take you to respond to a message?
  - (Note: you could use Slack's "direct message" feature, or you could make a private new channel -- just make sure to give it a unique name)
- __Submission__: Who will make the final submission for each milestone, and by when.
- __Pull Requests__: If a pull request is to be made as part of a milestone, by when will it be made? And, how long will other teammates have to review that pull request?

No need to render this markdown file. GitHub displays markdown files quite nicely.

__Grading__: 1 point awarded per topic discussed (up to 3 points). The remaining 2 points are awarded for thoughtfulness and clarity.

## README file

__5 points__

In the root of every project should be a README file that provides context and how-to instructions for the project. To write one of these, imagine that you stumble upon this project in 2 years from now; or, imagine that you're about to hire someone to come on board the project, and they've just opened up your project folder. What are the things that future-you or future-teammate must know about this project? Put that in the README.

#### Your Task

Make a new document in the root of your repository called `README.md`. 

Orient a visitor to your project by including a description of at least 3 aspects of your project:

- What is this project?
- What files are in the project folder / GitHub repository?
- How can they run code that appears in your folder / GitHub repository?

No need to render this markdown file. GitHub displays markdown files quite nicely.

__Grading__: 1 point awarded per topic discussed (up to 3 points). The remaining 2 points are awarded for thoughtfulness and clarity.

## GitHub Issues

__5 points__

GitHub Issues are a useful way to communicate with your team. They should be used for messages about your project that deserve some permanence and reference. 

Examples of messages that might not be best for GitHub Issues:

- "Can you remind me where to find the instructions for this milestone?"
- "I think I need a nap -- I might be a couple hours late with the pull request."
- "So, what do you think about this crazy weather we've been having??"

Examples of messages that do belong on GitHub Issues:

- "I noticed a problem with how we worked on Milestone 1. How can we go about fixing these?"
- "Here are my ideas for things to include in the README file -- do you have any other ideas?"
- Meeting agendas

#### Your Task

To get warmed up with GitHub Issues:

1. Each team member should write a new Issue introducing themselves briefly. Tag each of your teammates in the body of your Issue.
2. Each team member should respond to everyone's introduction Issue. 

__Grading__: 2 points if everyone started an Issue; 2 points if everyone commented on at least one other person's Issue; 1 point awarded for thoughtfulness and clarity of the discussion.

## Markdown Formatting

__4 points__

Between your `README.md` and `TEAMWORK.md` files, showcase at least five functionalities of GitHub-flavoured markdown. The [markdown cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf) might help here, or, the *Help* menu in RStudio will bring up a Markdown Quick Reference at any time.

__Note__: This is Thursday's topic; you might choose to wait until then to complete this.

__Grading__: 0.5 points for the first two markdown features; 1 point for the next three markdown features.


## Merge one Pull Request per teammate

__5 points__

Every teammate should submit at least one pull request. Each pull request should have a __different__ teammate both _comment on_ and _merge_ the pull request. 

As a reminder, in order to make a pull request, you'll need to:

1. Make a new branch. 
  - You can do this either on GitHub, or on your own computer using git.
2. Make changes to some files on the new branch. 
  - You can do this either on GitHub or on your own computer (locally), but if you do this locally, you'll need to remember to push your work (on the branch) to GitHub.
3. Start a pull request on GitHub by merging the branch to the main/master branch. 

Here are some ideas of things you can merge:

- Your initial draft of the README document or TEAMWORK document.
- Your changes to the troubleshooting exercise.
- Modifications to any document.

__Note__: Work together as a team to get this done. If one of your teammates is having trouble with this procedure, help them out! Sometimes something messy happens like a _merge conflict_, and it's best to work as a team to figure out how to resolve these issues.

__Grading__: 2 points awarded if everyone initiates a pull request; 2 points awarded if everyone's pull request gets successfully merged; 1 point awarded if each pull request has a comment from another teammate AND each teammate merges someone else's pull request.

## Troubleshooting document

__5 points__

Successfully complete the instructions found on the `troubleshooting-1` document.

## Submitting this Milestone

__1 point__

To submit this Milestone, you'll be tagging a release on your GitHub repository, and submitting a link to that release on canvas. 

_How to tag a release_:

1. Navigate to the main page (root) of your collaborative GitHub repository.
2. There should be a small link on the right-hand-side of your page that says "Create a new release". Click that.
  - You might also be able to get to the same place by clicking on the "tags" link beside where your branches are listed. 
3. For the tag version, put `m1.0`
4. Choose a release title and description (this is less important).
5. Do __not__ check off "This is a pre-release".
6. Click "Publish Release".
7. Put a link to that release as a submission on the Collaborative Project Milestone 1
  - You won't lose marks for _not_ doing this, but it would really help us out if you do this! Thank you!

_Tagging another release_:

If you want to change your submission _after_ tagging a release, you can still do this if it's before the deadline. Just increase the secondary version number by one -- so, make the tag version `m1.1`, then `m1.2`, etc.

__Grading__: 1 point awarded for tagging a release.