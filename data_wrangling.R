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


# Create a function to Import datasets
import_data <- function(dataset, sheet_index, skip_rows) {
  import(
    here("data", "fda", dataset),
    which = sheet_index,
    skip = skip_rows
  )
}

# Import all datasets
## Dataset 1
fv1 <- import_data(dataset1, 1, 4)  # Fruits and vegetables
mpf1 <- import_data(dataset1, 2, 1) # Meat, Poultry, Fish and Other
c1 <- import_data(dataset1, 3, 1)   # Cheese
mc1 <- import_data(dataset1, 4, 1)  # Milk and Cream
bgp1 <- import_data(dataset1, 5, 1) # Bread, Grains and Potatoes
bw1 <- import_data(dataset1, 6, 1)  # Bottled water

