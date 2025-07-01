data1 <- fread("household_power_consumption.txt", na.strings = "?")[
 Date %in% c("1/2/2007", "2/2/2007") 
]
View(data1)

data1[, DateTime := dmy_hms(paste(Date, Time))]
