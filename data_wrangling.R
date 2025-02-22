# Load packages
pacman::p_load(
  tidyverse, # Data wrangling
  here, # File management
  rio, # Import and export dataset
  DataExplorer # Create quick EDA reports
)
#--------------------------------------------------------------------------------------------
# Load USDA data
#--------------------------------------------------------------------------------------------
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


## Dataset 2
fv2 <- import_data(dataset2, 1, 2)  # Fruits and vegetables
mpf2 <- import_data(dataset2, 2, 1) # Meat, Poultry, Fish and Other
c2 <- import_data(dataset2, 3, 1)   # Cheese
mc2 <- import_data(dataset2, 4, 1)  # Milk and Cream
bgp2 <- import_data(dataset2, 5, 1) # Bread, Grains and Potatoes
bw2 <- import_data(dataset2, 6, 1)  # Bottled water

## Dataset 3
fv3 <- import_data(dataset3, 1, 2)  # Fruits and vegetables
mpf3 <- import_data(dataset3, 2, 1) # Meat, Poultry, Fish and Other
c3 <- import_data(dataset3, 3, 1)   # Cheese
mc3 <- import_data(dataset3, 4, 1)  # Milk and Cream
bgp3 <- import_data(dataset3, 5, 1) # Bread, Grains and Potatoes
bw3 <- import_data(dataset3, 6, 1)  # Bottled water

## Dataset 4
fg4 <- import_data(dataset4, 1, 4)  # All food groups
bw4 <- import_data(dataset4, 2, 1) # Bottled water

## Dataset 5
fg5 <- import_data(dataset5, 1, 3)  # All food groups
bw5 <- import_data(dataset5, 2, 1) # Bottled water

## Dataset 6
fg6 <- import_data(dataset6, 1, 3)  # All food groups
bw6 <- import_data(dataset6, 2, 1) # Bottled water

## Dataset 7
fg7 <- import_data(dataset7, 1, 3)  # All food groups
bw7 <- import_data(dataset7, 2, 1) # Bottled water

## Dataset 8
bg8 <- import_data(dataset8, 1, 4)  # Bread and grains
fv8 <- import_data(dataset8, 2, 2) # Fruit and vegetables
med8 <- import_data(dataset8, 3, 2) # Meat, egg and diary



###-------------------------------------------------------- 
# 1. Delete the MDL values, special symbols and whitespaces 
# from the PFAS columns names
#----------------------------------------------------------

clean_colnames <- function(df) {
  colnames(df) <- gsub("\\s*MDL\\s*=\\s*\\d+"," ", colnames(df)) # Remove MDL number
  colnames(df) <- gsub("[*+†]", " ", colnames(df)) # Remove special symbols
  colnames(df) <- trimws(colnames(df)) # Remove leading/trailing whitepace
  return(df)
}

## Dataset 8
dfs8 <- list(bg8, fv8, med8)
dfs8 <- lapply(dfs8, clean_colnames)

bg8 <- dfs8[[1]]
fv8 <- dfs8[[2]]
med8 <- dfs8[[3]]


#-------------------------------------------------------------------------------------------------
# 2: Re-arrange the PFAS columns in all the datasets to have the same order as 
# the FDA TDS  dataset 8
