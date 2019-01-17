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

# my scripts 
# load datafile 
mydata <- read.csv("InData.csv")
str(mydata)

library(dplyr)
# Remove rows with ‘Total’ biomass < 60
mydata2 <- mydata %>% filter(Total >= 60)
head(mydata2)
# Reorder the columns so that they are in the order: ‘Total’, ‘Taxon’, ‘Senario’, ‘Nutrients’, and remove the other columns
mydata3 <- mydata2 %>% select(Total, Taxon, Scenario, Nutrients)
# Make a new column TotalG, which converts the ‘Total’ column from mg to grams AND replace Total with TotalG.
mydata3$TotalG <- mydata3$Total/1000
mydata4 <- mydata3 %>% select(TotalG, Taxon, Scenario, Nutrients) 
#If there is a column called ‘Nutrients’, replace each string with its first letter – for example ‘high’ becomes ‘h’, ‘moderate’ becomes ‘m’, etc. (You don’t know what all the options might be)
if ("Nutrients" %in% names(mydata4) == T)  {
  print("Yes, there is a column called 'Nutrients'")
  gsub("(\\w)\\w+", "\\1", mydata4$Nutrients)
} else {
  print("Sorry. There is no column called 'Nutrients'")
}
# Replace all periods . with commas , in the ‘TotalG’ column
gsub("\\D", ",", mydata4$TotalG)



