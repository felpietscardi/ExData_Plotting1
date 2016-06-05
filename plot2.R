dataset <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
subset <- dataset[dataset$Date %in% c("", "1/2/2007","2/2/2007"), ]

globalActivePower <- as.numeric(subset$Global_active_power)
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()