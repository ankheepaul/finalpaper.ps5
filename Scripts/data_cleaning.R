#### Preamble ####
# Purpose: Prepare and clean the data downloaded from [...UPDATE ME!!!!!]
# Author: Ankhee Paul
# Data: 22 December 2020
# Contact: ankhee.paul@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Required to download the CSC data used by The Globe and Mail, 
#   and save it to inputs/data
# - Don't forget to gitignore it!

# Workspace setup
library(tidyverse)
library(haven)

# Read in the data and store it in the variable raw_data.
raw_data<-read.csv("The_Globe_and_Mail_CSC_OMS_2012-2018_20201022235635.csv",
                   na.strings=c(""))

# Rename the data and select the variables of interest.
select_data <- 
  raw_data%>%
  select(FISCAL.YEAR,
         AGE,
         GENDER,
         RACE,
         RACE.GROUPING,
         IN.CUSTODY.COMMUNITY,
         SUPERVISION.TYPE,
         JURISDICTION,
         SENTENCE.TYPE,
         AGGREGATE.SENTENCE.LENGTH,
         INSTUTUTIONAL.SECURITY.LEVEL,
         OFFENDER.SECURITY.LEVEL,
         STATIC.RISK,
         REINTEGRATION.POTENTIAL,
         RELIGION,
         OFFENCE.DESCRIPTION,
         OFFENDER.NUMBER)

# Rename the data and remove rows with missing values.
clean_data<-select_data %>% na.omit()

# Reselect the data and filter out individual's who went to federal prison.
clean_data<-
  select_data%>%
  #filtering out individuals who went to federal prison.
  filter(JURISDICTION %in% c("FEDERAL"))%>%
  na.omit()


clean_data <-
  # Reselect data and group all individual races other than 'Black' and 'White' 
  # into 'Other' category.
  select_data %>%
  mutate(RACE= case_when(RACE == "Black" ~ "Black",
                         RACE == "White" ~ "White",
                         RACE != "Black" || RACE != "White" ~"Other"))%>%
  # Merge rows together based on 'OFFENDER NUMBER' to group multiple entries 
  # for the same individual.
  group_by(OFFENDER.NUMBER)%>%
  # Remove missing values in the data.
  na.omit()



