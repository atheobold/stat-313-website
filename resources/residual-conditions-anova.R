
library(tidyverse)
library(openintro)

my_model <- aov(score ~ gender + ethnicity, data = evals)

my_model %>%
  broom::tidy()

# augment method for aov() is not maintained by broom!

broom::augment(my_model) %>%
  ggplot(mapping = aes(y = .resid, x = `gender`)) +
  geom_jitter() +
  geom_hline(yintercept = 0, color = "red", linewidth = 3) +
  labs(x = "gender",
       y = "Residuals")

broom::augment(my_model) %>%
  ggplot(mapping = aes(x = .resid)) +
  geom_histogram() +
  labs(x = "Residual")
