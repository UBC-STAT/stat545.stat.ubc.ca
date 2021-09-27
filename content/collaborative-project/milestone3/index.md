# STAT 545A Collaborative Project: Milestone 3

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

In this troubleshooting document, there are ten exercises. *Each student* must create **at least one pull request** containing their work, and _each student_ must merge another teammate's pull reqest (the person making the pull request should not merge their own pull request). When you make your pull request, be sure to comment on what changes the pull request includes, at a high level (do not include highly detailed explanations -- that's what the commit history is for). Note that, if your pull request would result in a merge conflict, it's up to you to fix the merge conflict before it gets merged.

### Grading

As specified on our course [website](https://stat545.stat.ubc.ca/collaborative-about/).

- Troubleshooting Document: 15 points
    - Each error is worth 1.5 points (1.5 x 10 = 15 pts)
- Pull requests: 10 points
    - Each student must create at least one pull request. 
      - 3 points for creating the pull requests.
      - 2 points for commentary in the pull request (title + explanation in the comment box).
      - 5 points for merging the pull request.
 - Repo organization: 5 points
    - README (2 pts)
    - File organization: no duplicate files, subfolder for each milestone... (2 pts)
    - Issues: resolved & closed (1 pts)

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
