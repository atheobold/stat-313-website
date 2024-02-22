
library(tidyverse)
library(infer)
library(lterdatasampler)


marsh_info <- pie_crab %>%
  group_by(site) %>%
  slice_sample(n = 1) %>%
  ungroup()

## SLR

obs_slope <- marsh_info %>%
  specify(response = water_temp,
          explanatory = latitude) %>%
  calculate(stat = "slope")

bootstrap <- marsh_info %>%
  specify(response = water_temp,
          explanatory = latitude) %>%
  generate(reps = 500,
           type = "bootstrap") %>%
  calculate(stat = "slope")

get_confidence_interval(bootstrap,
                        point_estimate = obs_slope,
                        level = 0.90)

## MLR
observed_fit <- marsh_info %>%
  specify(water_temp ~ latitude + air_temp) %>%
  fit()

bootstrap_fits <- marsh_info %>%
  specify(water_temp ~ latitude + air_temp) %>%
  generate(reps = 1000, type = "bootstrap") %>%
  fit()

bootstrap_fits

get_confidence_interval(bootstrap_fits,
                        point_estimate = observed_fit,
                        level = 0.90)
