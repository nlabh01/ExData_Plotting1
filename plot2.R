
script_path <- dirname(sys.frame(1)$ofile)
setwd(script_path)


source("data-in.R")


png(filename = "plot2.png", 
    width = 480, height = 480,
    bg = "transparent")

plot(filtered_data$DateTime, 
     filtered_data$Global_active_power, 
     type='l',
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()
