#set working folder

#load required packages
library(dplyr)
library(lubridate)


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

#check for performance
# to remove NAs on all or just subset
#print(Sys.time())

ds$Date <- as.Date(ds$Date, "%d/%m/%Y")
pDS <- filter(ds, Date >= "2007-02-01" & Date <= "2007-02-02")
pDS <- pDS[complete.cases(pDS), ]

#check for performance
#print(Sys.time())


pDS$datetime <- paste(pDS$Date, pDS$Time)
pDS$datetime <- strptime(pDS$datetime, "%Y-%m-%d %H:%M:%S")
#head(pDS)



