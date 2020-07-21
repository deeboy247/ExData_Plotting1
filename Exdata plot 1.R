


datafile <- "household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
FinalData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)


 plot 1 

 globalActivePower <- as.numeric(FinalData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


 plot 2

FinalData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)
plot(FinalData$SetTime, FinalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")


plot 3

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(FinalData$SetTime, FinalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(FinalData$SetTime, FinalData$Sub_metering_2, col=columnlines[2])
lines(FinalData$SetTime, FinalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")




dev.off()

