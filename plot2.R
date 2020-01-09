setwd("D:\\DS\\DS-R\\Course4\\Week1")


source(".//plotData.R")

#set plot width and height as requested
# change default unit to pixel from inch
png( ".//plot2.png", width= 480, height=480, units = "px")


#plot 2
# image name- plot2.png

plot(
   pDS$datetime,
   pDS$Global_active_power,
   type = "l",
   col = "black",
   ylab = "Global Active Power (kilowatts)" ,
   xlab = ""
)


dev.off()
