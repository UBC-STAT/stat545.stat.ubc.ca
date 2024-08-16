# Enter the first day of class (usually Imagine Day)
library(lubridate)
lec0 <- ymd("2024-09-03")

# Computations based on lec0:
n_weeks_a <- 7
dates_545a <- c(lec0, sort(lec0 + days(c(1:(n_weeks_a - 1) * 7, 2 + 0:(n_weeks_a - 1) * 7))))
dates_545a_pretty_noyear <- stringr::str_c(
  month(dates_545a, label = TRUE), 
  day(dates_545a), 
  sep = " "
)
dates_545a_pretty_full <- stringr::str_c(
  dates_545a_pretty_noyear, 
  ", ", 
  year(dates_545a)
)

n_weeks_b <- 7
dates_545b <- sort(lec0 + days(7 * n_weeks_a + c(0:(n_weeks_b - 1) * 7, 2 + 0:(n_weeks_b - 1) * 7)))
dates_545b_pretty_noyear <- stringr::str_c(
  month(dates_545b, label = TRUE), 
  day(dates_545b), 
  sep = " "
)
dates_545b_pretty_full <- stringr::str_c(
  dates_545b_pretty_noyear, 
  ", ", 
  year(dates_545b)
)

dates_all <- c(dates_545a, dates_545b)
dates_all_pretty_noyear <- c(dates_545a_pretty_noyear, dates_545b_pretty_noyear)
dates_all_pretty_full <- c(dates_545a_pretty_full, dates_545b_pretty_full)
