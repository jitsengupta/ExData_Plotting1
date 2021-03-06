source("readfile.R")

data <- readfile()
plot(data$Time, data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()

