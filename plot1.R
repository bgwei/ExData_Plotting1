png(
    "plot3.png",
    width     = 480,
    height    = 480,
    units     = "px"
)
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
gap <- as.numeric(as.character(power$Global_active_power[66637:69516]))
hist(gap, col = "Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()