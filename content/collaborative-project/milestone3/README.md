# STAT 545A Collaborative Project: Milestone 2

**Deadline**: Saturday, October 17, 2020 at 23:59 PST

**Points**: 30

## Troubleshooting Document

### Preparations

Before starting the troubleshooting document, you will need to following packages pre-installed if you don't have them already.

```r
install.packages(c('tidyverse','lubridate','palmerpenguins'))
```

You will also have to make sure that `dplyr` >= 1.0.0

```r
library(dplyr)
packageVersion('dplyr')
```

**Note**: Errors from not installing the above packages _do not count_ as errors in the troubleshooting document.

### Getting the Document

The troubleshooting document will be distributed to you in the form of a pull request. Shortly, you should see a pull request in your collaborative-ELEMENT repo. Merge that pull request and you should have a directory `milestone3`, with a `TBD3.Rmd` file within it.

<!-- The troubleshooting document can be found [here](https://github.com/UBC-STAT/stat545.stat.ubc.ca/raw/master/content/collaborative-project/milestone3/TB3.Rmd). You will have to download this the same way as you download the lecture worksheets. -->


### Instructions
In this troubleshooting document, there are ten exercises. *Each student* must create **at least 2 pull requests** working on the exercises. More requests may be created, but only **4** (2 from each student) **will be marked.** Please specify which pull requests (by the pull request number, not title) you would like to be graded, in an Issue. ~~Student A should write R code-blocks of _before_ and _after_ the fix to clearly show Student B what was changed.~~

> **Sidenote:** R code-blocks are like the regular GitHub-flavoured markdown codechunks using the 3 backticks. After the opening 3 backticks, you can specify what language you are writing in: r, so that GitHub uses syntax highlighting. It will look like this:
> ``````
> ```r
> ### CODE HERE ###
> ```
> ``````
> Read more about this [here](https://docs.github.com/en/github/writing-on-github/creating-and-highlighting-code-blocks#syntax-highlighting).

Student B then comments on the issue with the explanation, and requests changes or merges the pull request. If changes are requested, Student **A or B** can merge the pull request after Student A implements those changes.

You _do not_ have to create a new branch per exercise. If you're stuck, feel free to post an Issue and tag your teammate with what you're stuck on -- they may be able to help.

#### Basic Example (Before/After Optional)

##### _Student A creates the pull request: Exercise A Errors_

> In the following chunk, I would like to select all columns of the mtcars dataset from `disp` to `wt` (inclusive), and then, filter for those with horsepower (`hp`) of at least 100 or greater.

**Error #1**:

Before:

```r
mtcars %>%
  select(disp:vs) %>%
  filtering(hp >= "100")
```

After:
```r
mtcars %>%
  select(disp:wt) %>%
  filter(hp >= 100)
```

(**Error 2**: _if there was a second error..._)

##### _Student B comments_

**Error #1**:

**Number of Corrections**: 2

**Explanations**:

1. The question asks for selection from `disp` to `wt` (inclusive), but the code actually selected for `disp` to `vs` instead.
1. 100 needs to be an integer instead of a string to compare numeric value.

(**Error #2**: _if there was a second error..._)

#### _Student B can request changes or Student **A or B** can merge the pull request_

#### _Student B creates the pull request for Exercise B..._

#### A 'Good' Pull Request

To get full marks for the [pull request](https://stat545.stat.ubc.ca/collaborative-about/) portion:

- Student A who is creating the pull request must have:
    - A good title and description. A good title is self-explanatory, and a good description clearly states what was changed in the pull request (e.g. use the before/after R code-blocks)
- Student B who writes the explanation must start:
    - Productive discussion. Both students engaged in discussion in the pull request, and made changes to the document accordingly.
- Either Student **A or B** can merge the pull request

**Note**: The example above is a _basic_ pull request, not necessarily a _good_ pull request.

### Grading

As specified on our course [website](https://stat545.stat.ubc.ca/collaborative-about/).

- Troubleshooting Document: 15 points
    - Each error is worth 1.5 points (1.5 x 10 = 15 pts)
- Pull requests: 10 points
    - Each student must create *at least* 2 pull requests. You may choose to create more if you feel it will benefit your workflow, but only **4 requests in total** will be graded (2 from each student).
    - 4 PRs will be marked, at 2.5 pts each (2.5 x 10 = 15 pts). For each PR:
      - 1.25 for creating the pull request and implementing the fix
      - 1.25 for holding the discussion, explaining the fix, and merging the pull request
 - Repo organization: 5 points
    - README (1.25 pts)
    - File organization: no duplicate files, subfolder for each milestone... (1.25 pts)
    - Pull requests: resolved & closed (1.25 pts)
    - Issues: resolved & closed (1.25 pts)

**GRAND TOTAL:** 30 points

## Submitting this Milestone

To submit this Milestone, you'll be tagging a release on your GitHub repository, and submitting a link to that release on canvas.

_How to tag a release_:

1. Navigate to the main page (root) of your collaborative GitHub repository.
2. There should be a small link on the right-hand-side of your page that says "Create a new release". Click that.
  - You might also be able to get to the same place by clicking on the "tags" link beside where your branches are listed.
3. For the tag version, put `m3.0`
4. Choose a release title and description (this is less important).
5. Do __not__ check off "This is a pre-release".
6. Click "Publish Release".
7. Put a link to that release as a submission on the Collaborative Project Milestone 2
  - You won't lose marks for _not_ doing this, but it would really help us out if you do this! Thank you!

_Tagging another release_:

If you want to change your submission _after_ tagging a release, you can still do this if it's before the deadline. Just increase the secondary version number by one -- so, make the tag version `m3.1`, then `m3.2`, etc.
