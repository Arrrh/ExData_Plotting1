source("load_data.R")

png("Plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

plot(data1$DateTime, data1$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power",
     xaxt = "n")
axis(1,
       at = c(as.numeric(data1$DateTime[1]),
              as.numeric(data1$DateTime[1441]),
              as.numeric(data1$DateTime[2880])),
       labels = c("Thu", "Fri", "Sat"))

plot(data1$DateTime, data1$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "voltage",
     xaxt = "n")
axis(1,
     at = c(as.numeric(data1$DateTime[1]),
            as.numeric(data1$DateTime[1441]),
            as.numeric(data1$DateTime[2880])),
     labels = c("Thu", "Fri", "Sat"))

plot(data1$DateTime, data1$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     xaxt = "n")
lines(data1$DateTime, data1$Sub_metering_2, col = "red")
lines(data1$DateTime, data1$Sub_metering_3, col = "blue")
axis(1,
     at = c(as.numeric(data1$DateTime[1]),
            as.numeric(data1$DateTime[1441]),
            as.numeric(data1$DateTime[2880])),
     labels = c("Thu", "Fri", "Sat"))
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       bty = "n")

plot(data1$DateTime, data1$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power",
     xaxt = "n")
axis(1,
     at = c(as.numeric(data1$DateTime[1]),
            as.numeric(data1$DateTime[1441]),
            as.numeric(data1$DateTime[2880])),
     labels = c("Thu", "Fri", "Sat"))
dev.off()