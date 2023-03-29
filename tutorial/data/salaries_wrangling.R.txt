
library(tidyverse)

salaries <- read_csv(here::here("Week 6",
                                "Synchronous",
                                "coach_salaries.csv"))
univ_coaches <- salaries %>% 
  filter(Agency %in% c("California State University", 
                         "University of California"), 
         str_detect(`Job Title`, "[hH][Ee][Aa][Dd] [Cc][Oo][Aa][Cc][Hh]") == TRUE
         )

write_csv(univ_coaches, "cu_csu_coches.csv")


