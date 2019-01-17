# BIOL 432 Assignment 2 
# Jan.16.2019
# Ying Chen

# Write a script called DataMixer.R that uses Regular Expressions and dplyr to do the following (in any order that works):
## Read in a file named InData.csv
## Remove rows with ‘Total’ biomass < 60
## Reorder the columns so that they are in the order: ‘Total’, ‘Taxon’, ‘Senario’, ‘Nutrients’, and remove the other columns
## Make a new column TotalG, which converts the ‘Total’ column from mg to grams AND replace Total with TotalG.
## If there is a column called ‘Nutrients’, replace each string with its first letter – for example ‘high’ becomes ‘h’, ‘moderate’ becomes ‘m’, etc. (You don’t know what all the options might be)
## Replace all periods . with commas , in the ‘TotalG’ column

