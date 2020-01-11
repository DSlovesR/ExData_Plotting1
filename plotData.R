# Objective of plotData.R file is to load data from the 
# txt file-'household_power_consumption' and filter data
# as requested for the plot and convert data to proper type


#load required packages
library(dplyr)
library(lubridate)


###############LOAD data##################

#import data into R data frame
ds <-
   read.table(
      "household_power_consumption.txt",
      sep = ";",
      header = T,
      stringsAsFactors = FALSE,
      na.strings = "?"
   )


#check row count
#nrow(ds)
#check for object size
#print (object.size(ds), units = "Mb")

#############PREPARE data##################
#convert Date column data to date type
ds$Date <- as.Date(ds$Date, "%d/%m/%Y")
pDS <- filter(ds, Date >= "2007-02-01" & Date <= "2007-02-02")
pDS <- pDS[complete.cases(pDS), ]

#check for performance
#print(Sys.time())

#prepare column for datetime by combining date and time column
pDS$datetime <- paste(pDS$Date, pDS$Time)
pDS$datetime <- strptime(pDS$datetime, "%Y-%m-%d %H:%M:%S")
#head(pDS)



