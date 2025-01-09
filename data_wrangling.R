# Load packages
pacman::p_load(
  tidyverse, # Data wrangling
  here, # File management
  rio # Import and export dataset
)

# Load USDA data
usda <- import(here("data", "usda", "PFAS-Sampling-Data-2021-2022.xlsx"))
# View first five rows
head(usda)