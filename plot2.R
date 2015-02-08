png(
    "plot2.png",
    width     = 480,
    height    = 480,
    units     = "px"
)
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
gap <- as.numeric(as.character(power$Global_active_power[66637:69516]))
date <- power$Date[66637:69516]
time <- power$Time[66637:69516]
datetime <-  strptime( paste (date, time), "%d/%m/%Y %H:%M:%S")
plot(datetime,gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()