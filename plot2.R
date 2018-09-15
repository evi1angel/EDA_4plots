
## Create a new column that combines date and time  
EDA_p1$Timestamp <-paste(EDA_p1$Date, EDA_p1$Time)

plot(strptime(EDA_p1$Timestamp, "%d/%m/%Y %H:%M:%S"), EDA_p1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
