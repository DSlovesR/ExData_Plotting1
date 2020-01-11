# set working folder
setwd("D:\\DS\\DS-R\\Course4\\Week1")

# load data into environment 
source(".//plotData.R")

# set plot device with width and height as requested
# change default unit to pixel from inch
#plot 1
#image file name- plot1.R

png( ".//plot1.png", width= 480, height=480, units = "px")



#plot histogram to visualize Global Active power distribution
hist(
   pDS$Global_active_power,
   col = "red" ,
   xlab = "Global Active Power (kilowatts)",
   ylab = "Frequency",
   main = "Global Active Power"
)

dev.off()