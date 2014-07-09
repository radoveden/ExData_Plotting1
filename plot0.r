# this preparation steps downloads and unzip the file with our data
# it performs also some cleaning and write away a file to work with in the following steps
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" 
setInternet2(use = TRUE)
download.file(fileUrl, destfile = "project.zip", mode="wb")
Sys.sleep(300)# better wait here a bit
unzip("project.zip")
consumption <- read.table("household_power_consumption.txt", sep=";",  header=TRUE)
# we select the data we will use in future
datatouse <- subset(consumption, Date == "1/2/2007" | Date == "2/2/2007") 
write.table(datatouse, "consumption.txt", sep=";", row.names = FALSE)