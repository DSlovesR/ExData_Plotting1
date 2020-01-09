setwd("D:\\DS\\DS-R\\Course4\\Week1")

source(".//plotData.R")


#set plot width and height as requested
# change default unit to pixel from inch

png( ".//plot4.png", width= 480, height=480, units = "px")

#plot 4
par(mfrow = c(2, 2))

#1
with (pDS, {
   plot(
      datetime,
      Global_active_power,
      type = "l",
      col = "black",
      ylab = "Global Active Power" ,
      xlab = ""
   )
   #2
   plot(datetime, Voltage , type = "l", col = "black")
   
   #3
   plot(
      datetime,
      Sub_metering_1 ,
      type = "l",
      col = "black",
      ylab = "Energy sub metering" ,
      xlab = ""
   )
   lines(datetime, Sub_metering_2 ,  col = "red")
   lines(datetime, Sub_metering_3 ,  col = "blue")
   legend(
      "topright",
      inset=0.02,
      legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      col = c("black", "red", "blue") ,
      cex=0.6,
      pch = "__"
     , bty = "n"
   )
   
   #4
   plot(datetime,
        Global_reactive_power,
        type = "l",
        col = "black")
})

dev.off()

