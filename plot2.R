#Code to plot day-wise Global Active Power
#Reading data from file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Selecting data from the file
FebData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(FebData$Date, FebData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(FebData$Global_active_power)

#Plotting day-wise global active power
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

