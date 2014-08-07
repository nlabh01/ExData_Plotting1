
# below two lines makes the script independent of the path 
# where it is downlaoded and executed from
setwd(script_path)


# read the data into "filtered_data" variable to be
# used later for plotting
script_path <- dirname(sys.frame(1)$ofile)
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
