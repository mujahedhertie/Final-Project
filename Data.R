#######################################################################
# MPP-E1180: Introduction to Collaborative Social Science Data Analysis
# Collaborative Research Project
# Creating the Dataset
# Johannes Schulz-Knappe
# Update 17 May 2016
# Hertie School of Governance
#######################################################################


#-----------------------------------------#
# 1. Prepare the workspace                #
#-----------------------------------------#

## 1.1 Clear the environment

rm(list = ls())


## 1.2 Load packages for dataset creation

# Create vector of used packages
packages <- c('repmis', 'rvest', 'plyr', 'rio', 'xlsx')

# Install packages that are not already installed
for (p in packages) {
  if (p %in% installed.packages()[,1]) require(p, character.only=TRUE)
  else {
    install.packages(p)
    require(p, character.only=TRUE)
  }
}
rm(p)

# Load packages
loaded <- lapply(packages, require, character.only = TRUE)
rm(loaded)


## 1.3 Set the working directory

# Create list of commonly used working directories (update, if needed)
possible_dir <- c('C:/Users/Johannes SK/Dropbox/Studium/Spring2016/CollaborativeResearch/Final-Project',
                  'C:/Users/User/Documents/GitHub/Final-Project')

# Set to first valid directory in the possible_dir vector
set_valid_wd(possible_dir)

# remove possible_dir vector
rm(possible_dir)


## 1.4 Create bibTeX file for the used packages
LoadandCite(packages, file = 'Packages1.bib')
rm(packages)
            

#-----------------------------------------#
# 2. Run gathering and cleaning R files   #
#-----------------------------------------#

# Dynamically run R files in this order

## 2.1 Electoral data gathering
source("data_gathering/election_data_gathering.R")


## 2.2 Structural data gathering
source("data_gathering/structural_data_gathering.R")


## 2.3 Electoral data cleaning
source("data_cleaning/election_data_cleaning.R")


## 2.4 Structural data cleaning
source("data_cleaning/structural_data_cleaning.R")


#-----------------------------------------#
# 3. Merge the data                       #
#-----------------------------------------#

# Merge the data into the final data frame
Data <- merge(data.election, edu, "ID")
Data <- merge(Data, gdp, "ID")
Data <- merge(Data, unemp, "ID")
Data <- merge(Data, refugee, "ID")
Data <- merge(Data, debt, "ID")
Data <- merge(Data, type, "ID")

# Remove used data frames
rm(data.election)
rm(edu)
rm(unemp)
rm(gdp)
rm(refugee)
rm(debt)
rm(type)

# Round all variables to 2 digits
Data[, c(12, 13, 15, 17)] <- round(as.matrix(Data[, c(12, 13, 15, 17)]), digits=2)

# Save Data as file in repository
save(Data, file = "Data.Rda")