# STAT 545A Collaborative Project: Milestone 2

**Deadline**: Friday, September 25, 2020 at 23:59 PST

**Points**: 30

## Troubleshooting Document

In this troubleshooting document, there are ten exercises. For each exercise, create a GitHub issue. In each issue, display two R code chunks for each error, one _before_ and one _after_ your correction. Each student should either create the issue and propose the corrections, OR explain the error. All students must comment on each issue.

### Example

#### _Student A creates the issue: Exercise A Errors_

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

#### _Student B comments_

**Error #1**: 

**Number of Corrections**: 2

**Explanations**: 

1. The question asks for selection from `disp` to `wt` (inclusive), but the code actually selected for `disp` to `vs` instead. 
1. 100 needs to be an integer instead of a string to compare numeric value.

(**Error #2**: _if there was a second error..._)