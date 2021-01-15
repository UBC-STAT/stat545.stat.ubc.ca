# Script to generate the enron dataset used in STAT 545
library(tidyverse)
library(fs)

folder <- "_sent_mail"  # Folder to take emails from
n_max <- 100   # Max number of emails to take from each person

dirs <- dir_ls("maildir") %>% 
  map(~ {
    sent <- str_c(.x, "/", folder)
    if (dir_exists(sent)) {
      dir_ls(sent)
    } else {
      fs::path()
    }
  }) %>% 
  unname() %>% 
  c(recursive = TRUE) %>% 
  unname()

dat <- tibble(dir = dirs) %>% 
  transmute(mail_num = dir %>% 
              str_extract("/[0-9]*\\.$") %>% 
              str_remove("/") %>% 
              str_remove("\\.") %>% 
              as.numeric(),
            person = dir %>% 
              str_extract(str_c("/[a-z-]*/", folder)) %>% 
              str_remove(folder) %>% 
              str_remove_all("/"),
            email = map(dir, read_lines)) 

subdat_id <- dat %>% 
  select(-email) %>% 
  group_by(person) %>% 
  arrange(mail_num) %>% 
  slice(1:min(n_max, n()))

subdat <- semi_join(dat, subdat_id) %>% 
  unnest_longer(email)

write_csv(subdat, "enron.csv")
