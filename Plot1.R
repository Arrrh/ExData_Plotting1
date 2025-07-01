source("load_data.R")

png("Plot1.png", width = 480, height = 480)
hist(data1$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()