# Load packages
pacman::p_load(
  tidyverse, # Data wrangling
  here, # File management
  rio, # Import and export dataset
  DataExplorer # Create quick EDA reports
)

# Load USDA data
usda <- import(here("data", "usda", "PFAS-Sampling-Data-2021-2022.xlsx"), which=2, skip = 1)
# View first five rows
head(usda)