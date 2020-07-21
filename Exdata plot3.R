plot 3

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(FinalData$SetTime, FinalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(FinalData$SetTime, FinalData$Sub_metering_2, col=columnlines[2])
lines(FinalData$SetTime, FinalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
