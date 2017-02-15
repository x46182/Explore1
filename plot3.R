#We now want to plot the 3 different Sub_metering columns
png(file = "plot3.png")
with(df3, {
        plot(Time2, Sub_metering_1, col = "black", type = "l", 
             ylab = "Energy sub metering", xlab = "")
        lines(Time2, Sub_metering_2, col = "red")
        lines(Time2, Sub_metering_3, col = "blue")
        legend("topright", lty = 1, col = c("black", "red", "blue"),
                legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ))
       
})
dev.off()