# Load packages
pacman::p_load(
  tidyverse, # Data wrangling
  here, # File management
  rio, # Import and export dataset
  DataExplorer # Create quick EDA reports
)
#--------------------------------------------------------------------------------------------
# Load USDA data
usda <- import(here("data", "usda", "PFAS-Sampling-Data-2021-2022.xlsx"), which=2, skip = 1)

# View first five rows
head(usda)

# Create report for USDA data
create_report(usda, report_title = "USDA EDA")
#---------------------------------------------------------------------------------------------
# Load FDA datasets
#---------------------------------------------------------------------------------------------
## String names for datasets
dataset1 <- "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"
dataset2 <- "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"
dataset3 <- "Analytical-Results-for-PFAS-in-2021-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-3_09292023.xlsx"
dataset4 <- "Analytical-Results-for-PFAS-in-2021-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-4_09292023.xlsx"
dataset5 <- "Analytical-Results-for-PFAS-in-2021-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-5_09292023.xlsx"
dataset6 <- "Analytical-Results-for-PFAS-in-2021-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-6_09292023.xlsx"
dataset7 <- "Analytical-Results-for-PFAS-in-2021-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-7_09292023.xlsx"
dataset8 <- "analytical-results-for-pfas-in-2021-total-diet-study-sampling-parts-per-trillion-dataset-8_06252024.xlsx"


## Dataset 1
fv1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  skip = 4) # Fruits and vegetables

mpf1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  which = 3,
  skip = 1) # Cheese


mc1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  which = 4,
  skip = 1) # Milk and Cream


bgp1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes


bw1 <- import(
  here(
    "data",
    "fda",
    dataset1),
  which = 6,
  skip = 1) # Bottled water

#-------------------------------------------------------------------------------------------------------------------
## Dataset 2
fv2 <- import(
  here(
    "data",
    "fda",
    dataset2),
  skip = 4) # Fruits and vegetables

mpf2 <- import(
  here(
    "data",
    "fda",
    dataset2),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c2 <- import(
  here(
    "data",
    "fda",
    dataset2),
  which = 3,
  skip = 1) # Cheese


mc2 <- import(
  here(
    "data",
    "fda",
   dataset2),
  which = 4,
  skip = 1) # Milk and Cream


bgp2 <- import(
  here(
    "data",
    "fda",
    dataset2),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes


bw2 <- import(
  here(
    "data",
    "fda",
   dataset2),
  which = 6,
  skip = 1) # Bottled water

#-------------------------------------------------------------------------------------------------------------------
## Dataset 3
fv3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  skip = 2) # Fruits and vegetables

mpf3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 3,
  skip = 1) # Cheese


mc3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 4,
  skip = 1) # Milk and Cream


bgp3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes


bw3 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 6,
  skip = 1) # Bottled water

#--------------------------------------------------------------------------------
## Dataset 4
fv4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  skip = 2) # Fruits and vegetables

mpf4 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c4 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 3,
  skip = 1) # Cheese


mc4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 4,
  skip = 1) # Milk and Cream


bgp4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes

bw4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 6,
  skip = 1) # Bottled water

#--------------------------------------------------------------------------------
## Dataset 5
fv4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  skip = 2) # Fruits and vegetables

mpf4 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c4 <- import(
  here(
    "data",
    "fda",
    dataset3),
  which = 3,
  skip = 1) # Cheese


mc4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 4,
  skip = 1) # Milk and Cream


bgp4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes

bw4 <- import(
  here(
    "data",
    "fda",
    dataset4),
  which = 6,
  skip = 1) # Bottled water