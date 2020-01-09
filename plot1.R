setwd("D:\\DS\\DS-R\\Course4\\Week1")

source(".//plotData.R")

#set plot width and height as requested
# change default unit to pixel from inch
png( ".//plot1.png", width= 480, height=480, units = "px")


#plot 1
#image file name- plot1.R

hist(
   pDS$Global_active_power,
   col = "red" ,
   xlab = "Global Active Power (kilowatts)",
   ylab = "Frequency",
   main = "Global Active Power"
)

dev.off()