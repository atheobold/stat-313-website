
library(tidyverse)
library(palmerpenguins)
library(ggridges)
library(patchwork)


p1 <- ggplot(data = penguins,
       mapping = aes(x = bill_length_mm, fill = species)
       ) +
  geom_density(alpha = 0.5) +
  theme_void() +
  theme(legend.position = "none")


p2 <- ggplot(data = penguins,
       mapping = aes(x = bill_length_mm, y = body_mass_g, color = species)
       ) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm") +
  theme_void() +
  theme(legend.position = "none")

p3 <- ggplot(data = penguins,
             mapping = aes(x = bill_length_mm, y = body_mass_g)
             ) +
  geom_point(mapping = aes(color = species), alpha = 0.5) +
  geom_smooth(method = "lm", color = "black") +
  theme_void() +
  theme(legend.position = "none")


p3 + p1 + p2




