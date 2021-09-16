STAT 545A Troubleshooting Exercise for Milestone 1
================
Attribution: Thanks to Icíar Fernández Boyano for coming up with most of
this worksheet.

There are **3 errors** in this Rmd file, marked by `## ERROR X ##`,
where `X` is the error number.

## Welcome to R and Rmd!

This document is written in **R Markdown**. We’ll use this document to
explore the `mtcars` dataset.

First, let’s store the current date as a variable. We can use the
function `Sys.Date` with no arguments to get the current date:

``` r
## ERROR 1 ##
_today_ <- Sys.Date()
```

    ## Error: <text>:2:1: unexpected input
    ## 1: ## ERROR 1 ##
    ## 2: _
    ##    ^

You may notice that, although an error might appear in these cells, this
Rmd file knits just fine. That’s because the `error = TRUE` *chunk
option* is included in each chunk, allowing the Rmd file to knit, even
when an error is encountered.

Now, let’s load the `tidyverse` (meta-) package:

``` r
## ERROR 2 ##
libraries(tidyverse)
```

    ## Error in libraries(tidyverse): could not find function "libraries"

By loading the tidyverse, a function called `glimpse` has been made
available. This function is useful for viewing a data set. Let’s take a
look at the `mtcars` dataset by applying the `glimpse` function to
`mtcars`!

``` r
## ERROR 3 ##
glimpse mtcars
```

    ## Error: <text>:2:9: unexpected symbol
    ## 1: ## ERROR 3 ##
    ## 2: glimpse mtcars
    ##            ^
