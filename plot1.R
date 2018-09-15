install.packages("data.table")
library("data.table")
install.packages("dplyr")
library("dplyr")

fn <- ("exdata%2Fdata%2Fhousehold_power_consumption.zip")
unzip(fn)

EDA_p1 <- data.table::fread(input = "household_power_consumption.txt", stringsAsFactors = FALSE, na.strings="?")  
names(EDA_p1) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")                           

##  restrict to dates specified in assignment
EDA_p1 <- EDA_p1[EDA_p1$Date %in% c("1/2/2007","2/2/2007"),]

## OR ## EDA_p2 <- subset(EDA_p1, EDA_p1$Date=="2/1/2007" | EDA_p1$Date =="2/2/2007")

## Convert global active power column, global reactive power column, Sub_metering columns, and Voltage column to numeric
EDA_p1$Global_active_power <- as.numeric(as.character(EDA_p1$Global_active_power))

EDA_p1$Global_reactive_power <- as.numeric(as.character(EDA_p1$Global_reactive_power))

EDA_p1$Sub_metering_1 <- as.numeric(as.character(EDA_p1$Sub_metering_1))
EDA_p1$Sub_metering_2 <- as.numeric(as.character(EDA_p1$Sub_metering_2))
EDA_p1$Sub_metering_3 <- as.numeric(as.character(EDA_p1$Sub_metering_3))

EDA_p1$Voltage <- as.numeric(as.character(EDA_p1$Voltage))

## plot Global_active_power
hist(EDA_p1$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
	