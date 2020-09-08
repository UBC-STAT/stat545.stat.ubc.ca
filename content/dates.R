# Enter the first day of class (usually Imagine Day)
library(lubridate)
lec0 <- ymd("2020-09-08")

# Computations based on lec0:
dates_545a <- sort(lec0 + ddays(c(1:6 * 7, 2 + 0:6 * 7)))
dates_545a_pretty_noyear <- stringr::str_c(
  month(dates, label = TRUE), 
  day(dates), 
  sep = " "
)
dates_545a_pretty_full <- stringr::str_c(
  dates_545a_pretty_noyear, 
  ", ", 
  year(dates)
)

dates_545b <- sort(lec0 + ddays(7 * 7 + c(0:6 * 7, 2 + 0:6 * 7)))
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
