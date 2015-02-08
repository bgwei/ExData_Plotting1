png(
    "plot3.png",
    width     = 480,
    height    = 480,
    units     = "px"
)
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
sub1 <- as.numeric(as.character(power$Sub_metering_1[66637:69516]))
sub2 <- as.numeric(as.character(power$Sub_metering_2[66637:69516]))
sub3 <- as.numeric(as.character(power$Sub_metering_3[66637:69516]))
date <- power$Date[66637:69516]
time <- power$Time[66637:69516]
datetime <-  strptime( paste (date, time), "%d/%m/%Y %H:%M:%S")
plot(datetime,sub1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(datetime,sub1)
lines(datetime,sub2,col = "red")
lines(datetime,sub3,col = "blue")
legend("topright", col = c("black","red","blue"), lty = 1,
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty = "n")
dev.off()