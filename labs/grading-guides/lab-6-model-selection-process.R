

evals %>%
  map(.f = ~lm(score ~ .x, data = evals)) %>%
  map_df(.f = ~get_regression_summaries(.x)$adj_r_squared) %>%
  select(-score
  ) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "adj_r_sq") %>%
  slice_max(adj_r_sq)

## cls_credits with adj-R-2 of 0.04

evals %>%
  map(.f = ~lm(score ~ .x + cls_credits, data = evals)) %>%
  map_df(.f = ~get_regression_summaries(.x)$adj_r_squared) %>%
  select(-score,
         -cls_credits
  ) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "adj_r_sq") %>%
  slice_max(adj_r_sq)

## bty_avg with adj-R-2 of 0.08

evals %>%
  map(.f = ~lm(score ~ .x + cls_credits + bty_avg, data = evals)) %>%
  map_df(.f = ~get_regression_summaries(.x)$adj_r_squared) %>%
  select(-score,
         -cls_credits,
         -bty_avg
  ) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "adj_r_sq") %>%
  slice_max(adj_r_sq)

## gender with adj-R-2 of 0.1

evals %>%
  map(.f = ~lm(score ~ .x + cls_credits + bty_avg + gender, data = evals)) %>%
  map_df(.f = ~get_regression_summaries(.x)$adj_r_squared) %>%
  select(-score,
         -cls_credits,
         -bty_avg,
         -gender
  ) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "adj_r_sq") %>%
  slice_max(adj_r_sq)

## choice between cls_perc_eval and eval_completion with adj-R02 of 0.118

evals %>%
  map(.f = ~lm(score ~ .x + cls_credits + bty_avg + gender + cls_perc_eval + ethnicity, data = evals)) %>%
  map_df(.f = ~get_regression_summaries(.x)$adj_r_squared) %>%
  select(-score,
         -cls_credits,
         -bty_avg,
         -gender,
         -cls_perc_eval,
         - ethnicity
  ) %>%
  pivot_longer(cols = everything(),
               names_to = "variable",
               values_to = "adj_r_sq") %>%
  slice_max(adj_r_sq)
