# set working foler
setwd("D:\\DS\\DS-R\\Course4\\Week1")


#load data
source(".//plotData.R")

#set plot width and height as requested
# change default unit to pixel from inch
#plot 3

png( ".//plot3.png", width= 480, height=480, units = "px")


# plot three data points on same X axis
# and print data point name in legend
plot(
   pDS$datetime,
   pDS$Sub_metering_1 ,
   type = "l",
   col = "black",
   ylab = "Energy sub metering" ,
   xlab = ""
)
lines(pDS$datetime, pDS$Sub_metering_2 ,  col = "red")
lines(pDS$datetime, pDS$Sub_metering_3 ,  col = "blue")
legend(
   "topright",
    inset = 0.04,
   legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
   col = c("black", "red", "blue"),
   cex=.8,
   pch = "___"
)

dev.off()
