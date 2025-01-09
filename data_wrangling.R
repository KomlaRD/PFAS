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
## Dataset 1
fv1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  skip = 4) # Fruits and vegetables

mpf1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  which = 3,
  skip = 1) # Cheese


mc1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  which = 4,
  skip = 1) # Milk and Cream


bgp1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes


bw1 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-1_09292023.xlsx"),
  which = 6,
  skip = 1) # Bottled water

#-------------------------------------------------------------------------------------------------------------------
## Dataset 2
fv2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  skip = 4) # Fruits and vegetables

mpf2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  which = 2,
  skip = 1) # Meat, Poultry, Fish and Other


c2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  which = 3,
  skip = 1) # Cheese


mc2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  which = 4,
  skip = 1) # Milk and Cream


bgp2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  which = 5,
  skip = 1) # Bread, Grains and Potatoes


bw2 <- import(
  here(
    "data",
    "fda",
    "Analytical-Results-for-PFAS-in-2019-Total-Diet-Study-Sampling-(Parts-Per-Trillion)—Dataset-2_09292023.xlsx"),
  which = 6,
  skip = 1) # Bottled water