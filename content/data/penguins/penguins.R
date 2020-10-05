library(tidyverse)
library(palmerpenguins)


# Make tidy count data

penguins_count_tidy <- penguins %>% 
  count(species, island, year, name = "count") %>% 
  complete(species, island, year, fill = list(count = 0L))

DT::datatable(penguins_count_tidy)

penguins_count_tidy %>% 
  write_csv(here::here("data", "penguins", "penguins-count-tidy.csv"))

# Make three untidy tibbles

untidy <- penguins_count_tidy %>% 
  select(-largest_g) %>% 
  nest(data = c(island, year, count)) %>% 
  mutate(wide = map(data, pivot_wider, 
                    id_cols = island, 
                    names_from = year, 
                    values_from = count, 
                    names_prefix = "year_")) %>% 
  select(-data) %>% 
  deframe()

walk2(untidy, names(untidy), ~ 
        write_csv(.x, path = here::here("data", "penguins", str_c("untidy-", .y, ".csv")))
)

# Make semi-wide tibble

wide1 <- penguins_count_tidy %>% 
  pivot_wider(id_cols = c(island, year), 
              names_from = species, 
              values_from = count) 
wide1 %>% 
  write_csv(here::here("data", "penguins", "wide1.csv"))

DT::datatable(wide1)

# Make fully-untidy tibble

penguins_count_tidy %>% 
  pivot_wider(id_cols = species, names_from = c(island, year), values_from = count) %>% 
  write_csv(here::here("data", "penguins", "wide2.csv"))
