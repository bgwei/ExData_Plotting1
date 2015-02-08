png(
    "plot4.png",
    width     = 480,
    height    = 480,
    units     = "px"
)
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
gap <- as.numeric(as.character(power$Global_active_power[66637:69516]))
volt <- as.numeric(as.character(power$Voltage[66637:69516]))
sub1 <- as.numeric(as.character(power$Sub_metering_1[66637:69516]))
sub2 <- as.numeric(as.character(power$Sub_metering_2[66637:69516]))
sub3 <- as.numeric(as.character(power$Sub_metering_3[66637:69516]))
grp <- as.numeric(as.character(power$Global_reactive_power[66637:69516]))
date <- power$Date[66637:69516]
time <- power$Time[66637:69516]
datetime <-  strptime( paste (date, time), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2,2))
par(mar = c(4,4,2,2))
plot(datetime,gap, type = "l", xlab = "", ylab = "Global Active Power")
plot(datetime,volt, type = "l", xlab = "datetime", ylab = "Voltage")
{plot(datetime,sub1, type = "n", xlab = "", ylab = "Energy sub metering")
 lines(datetime,sub1)
 lines(datetime,sub2,col = "red")
 lines(datetime,sub3,col = "blue")
 legend("topright", bty = "n", col = c("black","red","blue"), lty = 1, legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))}
plot(datetime,grp, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()