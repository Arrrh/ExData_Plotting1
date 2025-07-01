source("load_data.R")

png("Plot3.png",  width = 480, height = 480)
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
       lty = 1)
dev.off()