# STAT 545A Collaborative Project: Milestone 2

**Deadline**: Friday, September 25, 2020 at 23:59 PST

**Points**: 45

## Troubleshooting Document

### Preparations

Before starting the troubleshooting document, you will need to following packages pre-installed if you don't have them already.

```r
install.packages(c('tidyverse','devtools','dslabs','gapminder'))
devtools::install_github("JoeyBernhardt/singer")
```

You will also have to make sure that `dplyr` >= 1.0.0

```r
library(dplyr)
packageVersion('dplyr')
```

**Note**: Errors from not installing the above packages _do not count_ as errors in the troubleshooting document.

### Instructions
In this troubleshooting document, there are ten exercises. For each exercise, Student A creates a pull request with the proposed fix. Optionally, Student A can write R code-blocks of _before_ and _after_ the fix (this step is optional because changes should be easily seen in the _Files changed_ tab of the pull request too). 

Student B then comments on the issue with the explanation, and requests changes or merges the pull request. If changes are requested, Student B can merge the pull request after Student A implements those changes. 

After merging the pull request, Student B works on the next exercise, creating the pull request and the cycle repeats. You _do not_ have to create a new branch per exercise.

Because the errors of are increasing difficulty, this ensures that the students work on alternating exercises.

#### Example

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

#### _Student B can request changes or merge the pull request_

#### _Student B creates the pull request for Exercise B..._

### Grading

- Each 'corrected' code chunk in the troubleshooting document is worth 1 point, for a total of 24 points
- Student A's pull request per exercise is worth 1 point, and Student B's comments and merging is worth 1 point, for a total of 2 points per exercise, leading to an overall total of 20 points
- 1 point is given for tagging the release for submission

**GRAND TOTAL:** 45 points

## Submitting this Milestone

To submit this Milestone, you'll be tagging a release on your GitHub repository, and submitting a link to that release on canvas. 

_How to tag a release_:

1. Navigate to the main page (root) of your collaborative GitHub repository.
2. There should be a small link on the right-hand-side of your page that says "Create a new release". Click that.
  - You might also be able to get to the same place by clicking on the "tags" link beside where your branches are listed. 
3. For the tag version, put `m2.0`
4. Choose a release title and description (this is less important).
5. Do __not__ check off "This is a pre-release".
6. Click "Publish Release".
7. Put a link to that release as a submission on the Collaborative Project Milestone 2
  - You won't lose marks for _not_ doing this, but it would really help us out if you do this! Thank you!

_Tagging another release_:

If you want to change your submission _after_ tagging a release, you can still do this if it's before the deadline. Just increase the secondary version number by one -- so, make the tag version `m2.1`, then `m2.2`, etc.