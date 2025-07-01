source("load_data.R")

png("Plot2.png", width = 480, height = 480)
plot(data1$DateTime, data1$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     xaxt = "n")
axis(1,
     at = c(as.numeric(data1$DateTime[1]),
            as.numeric(data1$DateTime[1441]),
            as.numeric(data1$DateTime[2880])),
     labels = c("Thu", "Fri", "Sat"))
dev.off()