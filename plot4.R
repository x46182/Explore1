png(file = "plot4.png")
par(mfrow = c(2,2))
with(df3, {
        plot(Time2, Global_active_power, type ="l", 
             ylab = "Global Active Power (kilowatts)", xlab="")
        plot(Time2, Voltage, xlab = "datetime", type = "l")
        plot(Time2, Sub_metering_1, col = "black", type = "l", 
             ylab = "Energy sub metering", xlab = "")
        lines(Time2, Sub_metering_2, col = "red")
        lines(Time2, Sub_metering_3, col = "blue")
        legend("topright", lty = 1, col = c("black", "red", "blue"), bty="n",
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ))
        plot(Time2, Global_reactive_power, xlab = "datetime", type = "l")
}) #end with
dev.off()