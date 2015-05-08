source("readfile.R")

data <- readfile()
    
hist(data$Global_active_power,
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    ylab="Frequency",
    col="red")
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
