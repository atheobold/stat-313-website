
math <- read_csv(here::here("Week 9 - ANOVA",
                    "Lab",
                    "data", 
                    "math_achievement_8th_grade.csv")
) %>% 
  pivot_longer(cols = -country, names_to = "year", values_to = "grade_8_math_score") %>% 
  drop_na(grade_8_math_score)

countries_continents <- read_csv("https://raw.githubusercontent.com/dbouquin/IS_608/master/NanosatDB_munging/Countries-Continents.csv")


math_continents <- math %>% 
  left_join(countries_continents, by = c("country" = "Country")
  ) %>% 
  rename(continent = Continent) %>% 
  mutate(continent = case_when(country == "Czech Republic" ~ "Europe", 
                               country == "Russia" ~ "Asia", 
                               country == "South Korea" ~ "Asia", 
                               country == "United States" ~ "North America", 
                               .default = continent)
  )