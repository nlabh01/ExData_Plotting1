
script_path <- dirname(sys.frame(1)$ofile)
setwd(script_path)


source("data-in.R")


png(filename = "plot3.png", 
    width = 480, height = 480,
    bg = "transparent")

plot(filtered_data$DateTime, 
     filtered_data$Sub_metering_1, 
     type='l',
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")

lines(filtered_data$DateTime, 
      filtered_data$Sub_metering_2, 
      col = "red")

lines(filtered_data$DateTime, 
      filtered_data$Sub_metering_3, 
      col = "blue")

legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      lwd = 1)


dev.off()
