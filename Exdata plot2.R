plot 2

FinalData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)
plot(FinalData$SetTime, FinalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
