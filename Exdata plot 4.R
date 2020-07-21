

plot 4

labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
plot(FinalData$SetTime, FinalData$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(FinalData$SetTime, FinalData$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(FinalData$SetTime, FinalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(FinalData$SetTime, FinalData$Sub_metering_2, type="l", col="red")
lines(FinalData$SetTime, FinalData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(FinalData$SetTime, FinalData$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")
