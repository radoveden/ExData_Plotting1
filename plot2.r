# we created comsumption.txt in plot0.R
# so, if you didn't do it yet, first execute plot0.R
consumption <- read.table("consumption.txt", sep=";",  header=TRUE)
# we need to combine Date and Time for our graph here
consumption$DateTime = paste(consumption$Date, consumption$Time)
consumption$DateTime = strptime(consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480,height=480)
plot(consumption$DateTime, consumption$Global_active_power, type = "l",
	xlab = "",
	ylab = "Global Active Power (kilowatts)")
dev.off()