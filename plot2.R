# set working folder

setwd("D:\\DS\\DS-R\\Course4\\Week1")

# load data 
source(".//plotData.R")

# set plot device with width and height as requested
# change default unit to pixel from inch

#plot 2
#image file name- plot2.R
png( ".//plot2.png", width= 480, height=480, units = "px")


# plot line chart to visualize power fluctuation in every min
plot(
   pDS$datetime,
   pDS$Global_active_power,
   type = "l",
   col = "black",
   ylab = "Global Active Power (kilowatts)" ,
   xlab = ""
)


dev.off()
