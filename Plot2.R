
##First read the data from the text file, assuming it is placed on the current directory.
dataFile <- "./data/household_power_consumption.txt"
TheData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- TheData[TheData$Date %in% c("1/2/2007","2/2/2007") ,]

## Extract the date and time, then use the Plot function to plot the required graph. 
## It is ploted to a PNG file.
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
