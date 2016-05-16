#######################################################################
# MPP-E1180: Introduction to Collaborative Social Science Data Analysis
# Collaborative Research Project
# Structural Data Gathering 
# Johannes Schulz-Knappe
# Update 16 May 2016
# Hertie School of Governance
#######################################################################


#-----------------------------------------#
# 1. Prepare the workspace                #
#-----------------------------------------#

# Run "1_Data.R" for workspace preparation


#-----------------------------------------#
# 2. Retrieve structura data              #
#-----------------------------------------#

# The data on structural characteristics of the districts is manually 
# retrieved from https://www.regionalstatistik.de/genesis/online, as the 
# Federal Statistical Office does not provide an API.

# We use the data files 171-01-4 (District Size), 192-71-4 (Education), 659-71-4 (Unemployment),
# 426-71-4 (GDP per Capita), 335-31-4 (Number of Asylum Seekers), and 358-61-4 (Public Debt).
# The downloaded csv files are stored under '/data_raw' in the working directory


## 2.1 District size

# Table 171-01-4, downloaded on 13/5/2016, selected time = 2014

size_raw <- read.csv("data_raw/171-01-4.csv", 
                     header = FALSE, 
                     sep = ";", 
                     na.strings = c("-","."),
                     col.names = c("date", "district.ID", "district.name", 
                                   "space"),
                     skip = 7,
                     nrows = 524,
                     dec=",")

## 2.2 Education

# Table 192-71-4, downloaded on 13/5
edu_raw <- read.csv("data_raw/192-71-4.csv", 
                    header = FALSE, 
                    sep = ";", 
                    na.strings = c("-","."),
                    skip = 11,
                    nrows = 524,
                    dec=",")

## 2.3 Unemployment rate

# Table 659-71-4, downloaded 13/5/2016, selected time = 2014

# Import the csv file
unemp_raw <- read.csv("data_raw/659-71-4.csv",
                      header = FALSE, 
                      sep = ";", 
                      na.strings = c("-","."),
                      nrows = 533,
                      dec = ",")

## 2.4 GDP per capita

# Table 426-71-4, downloaded 13/5/2016, selected time = 2013

# Import the csv file
gdp_raw <- read.csv("data_raw/426-71-4.csv",
                    header = FALSE, 
                    sep = ";", 
                    na.strings = c("-", ".", "..."),
                    skip = 10,
                    nrows = 524)

## 2.5 Number of asylum seekers

# Table 335-31-4, downloaded 13/5/2016, selected time = 2013

# Import the csv file
refugee_raw <- read.csv("data_raw/335-31-4.csv",
                        header = FALSE, 
                        sep = ";", 
                        na.strings = c("-","."),
                        skip = 9,
                        nrows = 524,
                        dec = ",")

## 2.6 District public debt

# Table 358-61-4, downloaded 13/5/2016, selected time = 2009

# Import the csv file
debt_raw <- read.csv("data_raw/358-61-4.csv",
                     header = FALSE, 
                     sep = ";", 
                     na.strings = c("-","."),
                     col.names = c("date", "district.ID", "district.name", 
                                   "public.debt", "public.loan.debt", "indep.inst.debt",
                                   "local.hospital.debt"),
                     skip = 7,
                     nrows = 524,
                     dec = ",")