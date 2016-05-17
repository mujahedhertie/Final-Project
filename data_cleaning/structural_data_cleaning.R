#######################################################################
# MPP-E1180: Introduction to Collaborative Social Science Data Analysis
# Collaborative Research Project
# Structural Data Cleaning 
# Johannes Schulz-Knappe
# Update 16 May 2016
# Hertie School of Governance
#######################################################################


#-----------------------------------------#
# 1. Prepare the workspace                #
#-----------------------------------------#

# Run "1_Data.R" for workspace preparation


#-----------------------------------------#
# 2. Cleaning structural data             #
#-----------------------------------------#


## 2.1 Education

# Delete unnecessary columns
edu <- edu_raw[, c(2, 4, 6, 14)]  

# Rename columns
names(edu) <- c("ID", "school.leaver", "nodegree", "abitur")

# Convert ID to numeric
edu$ID <- as.numeric(as.character(edu$ID)) 

# Create abitur.ratio
edu$abitur.ratio <- edu$abitur/edu$school.leaver*100

# Create nodegree.ratio
edu$nodegree.ratio <- edu$nodegree/edu$school.leaver*100

# Delete used columns
edu$nodegree      <- NULL
edu$abitur        <- NULL
edu$school.leaver <- NULL

# Remove raw data from environment
rm(edu_raw)



## 2.2 GDP per capita

# Delete unnecessary columns
gdp <- gdp_raw[, c(2, 6)]

# Rename columns
names(gdp) <- c("ID", "GDP.capita")

# Convert variables
gdp$ID <- as.numeric(as.character(gdp$ID))  # Convert ID to numeric 
gdp$GDP.capita <- as.character(gdp$GDP.capita)  # convert GDP.capita to character
gdp$GDP.capita <- gsub(",", ".", x = gdp$GDP.capita)  # replace commas with periods
gdp$GDP.capita <- as.numeric(gdp$GDP.capita)  # convert GDP.capita to numeric
gdp$GDP.capita <- gdp$GDP.capita/1000 # divide by thousand for better readability

# Remove raw data from environment
rm(gdp_raw)



## 2.3 Unemployment rate

# Keep necessary columns
unemp <- unemp_raw[, c(2, 12)]

# Delete unnecessary rows
unemp <- unemp[-c(1:9), ]

# Rename columns
names(unemp) <- c("ID", "unempl.rate")

# Convert variables
unemp$ID <- as.numeric(as.character(unemp$ID))  # convert ID to numeric
unemp$unempl.rate <- as.character(unemp$unempl.rate)  # convert unempl.rate to character
unemp$unempl.rate <- gsub(",", ".", x = unemp$unempl.rate)  # replace commas with periods
unemp$unempl.rate <- as.numeric(unemp$unempl.rate)  # convert unempl.rate to numeric

# Remove raw data from environment
rm(unemp_raw)



## 2.4 Number of asylum seekers

# Keep necessary columns
refugee <- refugee_raw[, c(2, 4)]

# Rename columns
names(refugee) <- c("ID", "n.refugees")

# Remove raw data from environment
rm(refugee_raw)



## 2.5 District public debt

# Keep necessary columns
debt <- debt_raw[, c(2, 4)]

# Rename columns
names(debt) <- c("ID", "public.debt")

# Divide debt by 1000 for better readability
debt$public.debt <- debt$public.debt/1000

# Remove raw data from environment
rm(debt_raw)



## 2.6 District type

# Keep necessary columns
type <- size_raw[, c(2, 3)]

# Create type column
type$district.type <- 0
type$district.type[grep('Kreisfreie Stadt', type$district.name)] <- 1

# Rename column
names(type) <- c("ID", "district.name", "district.type")

# Remove used column
type$district.name <- NULL

# Remove raw data from the environment
rm(size_raw)