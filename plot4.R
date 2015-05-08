source("readfile.R")

data <- readfile()

# four plots, row-wise
par(mfrow=c(2,2))
# first plot
plot(data$Time, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# second plot
plot(data$Time, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

# third plot
plot(data$Time, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
# add lines
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
# add legend
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       cex=0.4, pt.cex = 1)

# fourth plot
plot(data$Time, data$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(data$Time, data$Global_reactive_power)

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()
