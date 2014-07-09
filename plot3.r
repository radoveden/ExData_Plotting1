# we created comsumption.txt in plot0.R
# so, if you didn't do it yet, first execute plot0.R
consumption <- read.table("consumption.txt", sep=";",  header=TRUE)
# we need to combine Date and Time for our graph here
consumption$DateTime = paste(consumption$Date, consumption$Time)
consumption$DateTime = strptime(consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480,height=480)
plot(consumption$DateTime, consumption$Sub_metering_1, type = "l",
	xlab = "",
	ylab = "Energy sub metering")
# plot the two other lines
lines(consumption$DateTime, consumption$Sub_metering_2, col= "red")
lines(consumption$DateTime, consumption$Sub_metering_3, col= "blue")
# and the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
	lty = c(1,1), col = c("black","red", "blue")) 
dev.off()