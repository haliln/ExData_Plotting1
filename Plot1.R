# First should load the data to a data frame. Assuming that the data txt file was downloaded from the web
# to the current directory.

dataFile <- "./data/household_power_consumption.txt"
TheData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- TheData[TheData$Date %in% c("1/2/2007","2/2/2007") ,]

#Convert the data to numeric and plot it to the PNG graphic device.
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
