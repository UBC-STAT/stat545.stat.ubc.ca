---
title: "Team Troubleshooting Deliverable 2"
output: github_document
---

```{r include = FALSE}
knitr::opts_chunk$set(error = TRUE)
```

There are **11 code chunks with errors** in this Rmd. Your objective is to fix all of the errors in this worksheet. For the purpose of grading, each erroneous code chunk is equally weighted.

Note that errors are not all syntactic (i.e., broken code)! Some are logical errors as well (i.e. code that does not do what it was intended to do).

## Exercise 1: Exploring with `select()` and `filter()`

[MovieLens](https://dl.acm.org/doi/10.1145/2827872) are a series of datasets widely used in education, that describe movie ratings from the MovieLens [website](https://movielens.org/). There are several MovieLens datasets, collected by the [GroupLens Research Project](https://grouplens.org/datasets/movielens/) at the University of Minnesota. Here, we load the MovieLens 100K dataset from Rafael Irizarry and Amy Gill's R package, [dslabs](https://cran.r-project.org/web/packages/dslabs/dslabs.pdf), which contains datasets useful for data analysis practice, homework, and projects in data science courses and workshops. We'll also load other required packages.

```{r}
### ERROR HERE ###
load.packages(dslabs)
load.packages(tidyverse)
load.packages(stringr)
install.packages("devtools") # Do not run this if you already have this package installed! 
devtools::install_github("JoeyBernhardt/singer")
load.packages(gapminder)
```

Let's have a look at the dataset! My goal is to:

-   Find out the "class" of the dataset.
-   If it isn't a tibble already, coerce it into a tibble and store it in the variable "movieLens".
-   Have a quick look at the tibble, using a *dplyr function*.

```{r}
### ERROR HERE ###
class(dslabs::movielens)
movieLens <- as_tibble(dslabs::movielens)
dim(movieLens)
```

Now that we've had a quick look at the dataset, it would be interesting to explore the rows (observations) in some more detail. I'd like to consider the movie entries that...

-   belong *exclusively* to the genre *"Drama"*;
-   don't belong *exclusively* to the genre *"Drama"*;
-   were filmed *after* the year 2000;
-   were filmed in 1999 *or* 2000;
-   have *more than* 4.5 stars, and were filmed *before* 1995.

```{r}
### ERROR HERE ###
filter(movieLens, genres == "Drama")
filter(movieLens, !genres == "Drama")
filter(movieLens, year >= 2000)
filter(movieLens, year == 1999 | month == 2000)
filter(movieLens, rating > 4.5, year < 1995)
```

While filtering for *all movies that do not belong to the genre drama* above, I noticed something interesting. I want to filter for the same thing again, this time selecting variables **title and genres first,** and then *everything else*. But I want to do this in a robust way, so that (for example) if I end up changing `movieLens` to contain more or less columns some time in the future, the code will still work. Hint: there is a function to select "everything else"...

```{r}
### ERROR HERE ###
movieLens %>%
  filter(!genres == "Drama") %>%
  select(title, genres, year, rating, timestamp)
```

## Exercise 2: Calculating with `mutate()`-like functions

Some of the variables in the `movieLens` dataset are in *camelCase* (in fact, *movieLens* is in camelCase). Let's clean these two variables to use *snake_case* instead, and assign our post-rename object back to "movieLens".

```{r}
### ERROR HERE ###
movieLens <- movieLens %>%
  rename(user_id == userId,
         movie_id == movieId)
```

As you already know, `mutate()` defines and inserts new variables into a tibble. There is *another mystery function similar to `mutate()`* that adds the new variable, but also drops existing ones. I wanted to create an `average_rating` column that takes the `mean(rating)` across all entries, and I only want to see that variable (i.e drop all others!) but I forgot what that mystery function is. Can you remember?

```{r}
### ERROR HERE ### 
mutate(movieLens,
       average_rating = mean(rating))
```

## Exercise 3: Calculating with `summarise()`-like functions

Alone, `tally()` is a short form of `summarise()`. `count()` is short-hand for `group_by()` and `tally()`.

Each entry of the movieLens table corresponds to a movie rating by a user. Therefore, if more than one user rated the same movie, there will be several entries for the same movie. I want to find out how many times each movie has been reviewed, or in other words, how many times each movie title appears in the dataset.

```{r}
movieLens %>%
  group_by(title) %>%
  tally()
```

Without using `group_by()`, I want to find out how many movie reviews there have been for each year.

```{r}
### ERROR HERE ###
movieLens %>%
  tally(year)
```

Both `count()` and `tally()` can be grouped by multiple columns. Below, I want to count the number of movie reviews by title and rating, and sort the results.

```{r}
### ERROR HERE ###
movieLens %>%
  count(c(title, rating), sort = TRUE)
```

Not only do `count()` and `tally()` quickly allow you to count items within your dataset, `add_tally()` and `add_count()` are handy shortcuts that add an additional columns to your tibble, rather than collapsing each group.

## Exercise 4: Calculating with `group_by()`

We can calculate the mean rating by year, and store it in a new column called `avg_rating`:

```{r}
movieLens %>%
  group_by(year) %>%
  summarize(avg_rating = mean(rating))
```

Using `summarize()`, we can find the minimum and the maximum rating by title, stored under columns named `min_rating`, and `max_rating`, respectively.

```{r}
### ERROR HERE ###
movieLens %>%
  mutate(min_rating = min(rating), 
         max_rating = max(rating))
```

## Exercise 5: Scoped variants with `across()`

`across()` is a newer dplyr function (`dplyr` 1.0.0) that allows you to apply a transformation to multiple variables selected with the `select()` and `rename()` syntax. For this section, we will use the `starwars` dataset, which is built into R. First, let's transform it into a tibble and store it under the variable `starWars`.

```{r}
starWars <- as_tibble(starwars)
```

We can find the mean for all columns that are numeric, ignoring the missing values:

```{r}
starWars %>%
  summarise(across(where(is.numeric), function(x) mean(x, na.rm=TRUE)))
```

We can find the minimum height and mass within each species, ignoring the missing values: 

```{r}
### ERROR HERE ###
starWars %>%
  group_by(species) %>%
  summarise(across("height", "mass", function(x) min(x, na.rm=TRUE)))
```

Note that here R has taken the convention that the minimum value of a set of `NA`s is `Inf`.

## Exercise 6: Making tibbles

Manually create a tibble with 4 columns:

-   `birth_year` should contain years 1998 to 2005 (inclusive);
-   `birth_weight` should take the `birth_year` column, subtract 1995, and multiply by 0.45;
-   `birth_location` should contain three locations (Liverpool, Seattle, and New York).

```{r}
### ERROR HERE ###
fakeStarWars <- tribble(
  ~name,            ~birth_weight,  ~birth_year, ~birth_location
  "Luke Skywalker",  1.35      ,   1998        ,  Liverpool, England,
  "C-3PO"         ,  1.80      ,   1999        ,  Liverpool, England,
  "R2-D2"         ,  2.25      ,   2000        ,  Seattle, WA,
  "Darth Vader"   ,  2.70      ,   2001        ,  Liverpool, England,
  "Leia Organa"   ,  3.15      ,   2002        ,  New York, NY,
  "Owen Lars"     ,  3.60      ,   2003        ,  Seattle, WA,
  "Beru Whitesun Iars", 4.05   ,   2004        ,  Liverpool, England,
  "R5-D4"         ,  4.50      ,   2005        ,  New York, NY,
)
```

## Attributions

Thanks to Icíar Fernández-Boyano for writing most of this document, and Albina Gibadullina, Diana Lin, Yulia Egorova, and Vincenzo Coia for their edits.
