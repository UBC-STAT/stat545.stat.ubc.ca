library(tidyverse)

# Inspired by tidyr pivot vignette 
# https://tidyr.tidyverse.org/articles/pivot.html

family <- tribble(
  ~family,  ~dob_child1,  ~dob_child2, ~gender_child1, ~gender_child2, ~dob_parent1, ~dob_parent2, ~gender_parent1, ~gender_parent2,
  1L, "1998-11-26", "2000-01-29",             "M",             "F",     "1960-04-04", "1955-06-01",           "M",            "M",
  2L, "1996-06-22",           NA,             "F",             NA,      "1978-12-12",           NA,           "F",             NA,
  3L, "2002-07-11", "2004-04-05",             "F",             "F",     "1980-08-30", "1980-03-30",           "M",            "F",
  4L, "2004-10-10", "2009-08-27",             "M",             "M",     "1984-03-28", "1984-01-01",           "F",   "non-binary",
  5L, "2000-12-05", "2005-02-28",             "F",             "M",     "1975-04-11", "1974-05-11",           "F",            "M"
) %>% 
  mutate(across(starts_with("dob"), lubridate::ymd))

family %>% 
  select(-contains("parent")) %>% 
  write_csv(here::here("data", "family", "family-kids.csv"))

family %>% 
  write_csv(here::here("data", "family", "family-whole.csv"))
