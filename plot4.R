
# below two lines makes the script independent of the path 
# where it is downlaoded and executed from
script_path <- dirname(sys.frame(1)$ofile)
setwd(script_path)


# read the data into "filtered_data" variable to be
# used later for plotting
source("data-in.R")


png(filename = "plot4.png", 
    width = 480, height = 480,
    bg = "transparent")

par(mfrow = c(2, 2))


# 1st plot on top left
plot(filtered_data$DateTime, 
     filtered_data$Global_active_power, 
     type='l',
     col = "black",
     xlab = "",
     ylab = "Global Active Power")

# 2nd plot on top right
plot(filtered_data$DateTime, 
     filtered_data$Voltage, 
     type='l',
     col = "black",
     xlab = "datetime",
     ylab = "Voltage")

# 3rd plot on bottom left
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

# 4th plot on bottom right
plot(filtered_data$DateTime, 
     filtered_data$Global_reactive_power, 
     type='l',
     col = "black",
     xlab = "datetime",
     ylab = "Global_reactive_power")


dev.off()
