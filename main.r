#loading libraries
library('ggplot2')
library('tidyr')
library('tidyverse')

#variables
seaglass <- as_tibble(seaglass_record_2025)



#pie chart for 4/24/2025 gemini code
columns_to_exclude <- c("Date", "Duration (h)", "Blue total", "Turqoise total", "Weird total", "TOTAL")
trip4 <- seaglass %>%
  slice(1) %>%
  select(-columns_to_exclude) %>%
  pivot_longer(cols = everything(), names_to = "variable", values_to = "value")

ggplot(first_row, aes(x = ""))
