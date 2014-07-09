# we created comsumption.txt in plot0.R
# so, if you didn't do it yet, first execute plot0.R
consumption <- read.table("consumption.txt", sep=";",  header=TRUE)
png(file="plot1.png",width=480,height=480)
hist(consumption$Global_active_power, col="red",
	main = "Global Active Power",
	xlab = "Global Active Power (kilowatts)")
dev.off()