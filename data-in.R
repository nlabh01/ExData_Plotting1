

fileURL="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
downloadFile="data_for_project.zip"
dataFile="household_power_consumption.txt"

if ( .Platform$OS.type  %in% "windows" ) {
   # Using default download method for Win OS
   if(!file.exists(downloadFile)){
        download.file(fileURL,downloadFile)
   }
} else { 
   # Using curl for download for Mac/Unix OS
   if(!file.exists(downloadFile)){
        download.file(fileURL,downloadFile,"curl")
   }
}


# If file household_power_consumption.txt" not found, 
# unzip the downloaded file to retrieve it
if(!file.exists(dataFile)){
   unzip(downloadFile)
}

raw_data <- read.csv(dataFile,header=TRUE,sep=';',na = "?")
filtered_data <- raw_data[(raw_data$Date == "1/2/2007" | raw_data$Date == "2/2/2007"),]

# get rid of raw data to release memory 
rm(raw_data)


filtered_data$DateTime <-  strptime(paste(filtered_data$Date, filtered_data$Time), "%d/%m/%Y%H:%M:%S")


