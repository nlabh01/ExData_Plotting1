
script_path <- dirname(sys.frame(1)$ofile)
setwd(script_path)


source("data-in.R")


png(filename = "plot1.png", 
    width = 480, height = 480,
    bg = "transparent")

hist(filtered_data$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()
