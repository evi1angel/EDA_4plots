## plot datetime vs Sub metering 1 
plot(strptime(EDA_p1$Timestamp, "%d/%m/%Y %H:%M:%S"),  EDA_p1$Sub_metering_1,  type = "l", xlab = "", ylab = "Energy sub metering")

## plot datetime vs Sub metering 2 data in red
lines(strptime(EDA_p1$Timestamp, "%d/%m/%Y %H:%M:%S"),  EDA_p1$Sub_metering_2,  type = "l", col = "red" )

## plot date/time vs Sub metering 3 data in blue
lines(strptime(EDA_p1$Timestamp, "%d/%m/%Y %H:%M:%S"), EDA_p1$Sub_metering_3, type = "l", col = "blue" )

## Adds text to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"),  legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
