---
title: "Peer Review 01"
date: "18 September 2019"
output: 
  html_document: 
    theme: cerulean
---
Find your GitHub username below. If you don’t see it, please send Vincenzo or Firas an email.

For instructions on giving a peer review, see the [peer review page](https://stat545.stat.ubc.ca/evaluation/peer-review/).
```{r setup, include=FALSE}
## This script determines the peer review -- who reviews whom? -- and puts 
##  this in a nice (?) table that hopefully contains obvious instructions 
##  for the students. This is saved as a csv in the `STAT545-UBC` repo, 
##  assuming you have that located in the same folder as this `InstructorsOnly` repo.
##  This table is `kable`d in the actual hw assignments automatically. This part of 
##  the automation is set up that way, making sure that the hw has an Rmd source 
##  instead of an md source.

library(tidyverse)
library(knitr)
library(stringr)
library(gapminder)
library(tibble)
library(readr)
library(kableExtra)

#Load class list
full_list <-finalFile <- read_delim("D:/Dropbox_2019/Dropbox/STAT545/finalFile.txt","\t", escape_double = FALSE, trim_ws = TRUE)
#Set HW number
hw_num <- 1

#full_list <- full_list[!grepl("sitting in", full_list$standing),]

## Peer review table. Lag by 2 twice.
set.seed(hw_num*100)

gh <- na.omit(full_list$Notes)
gh <- c(sample(gh))

pr <- cbind(your_github = gh,
                 review_this1 = ifelse(is.na(lead(gh)), gh[1], lead(gh)),
                 review_this2 = ifelse(is.na(lead(gh, 2)), gh[2:1], lead(gh, 2)))
pr= data.frame(pr)

pr$reviwer=NA
pr$reviewee=NA
url="https://github.com/STAT545-UBC-hw-2019-20/stat545-hw-"
for (i in 1:nrow(pr)){
  pr$reviwer[i] =as.character(pr$your_github[i])
  pr$reviewee[i] =paste0("Please review the ", "hw0",hw_num, " submission of ",
                         "<a href=\"",paste0(url,pr$review_this1[i]),"\">",pr$review_this1[i],"</a>"," and ",
                         "<a href=\"",paste0(url,pr$review_this2[i]),"\">",pr$review_this2[i],"</a>")
}

#prepare data to show up
data_r=data.frame(Reviewer= pr$reviwer, Reviewee = pr$reviewee)
```

```{r,echo=FALSE}
data_r %>% 
  kable(format = "html", escape = F) %>%
  kable_styling(full_width = F, bootstrap_options = c("striped", "hover", "condensed", "responsive"),fixed_thead = T)

````

