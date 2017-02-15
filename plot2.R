#Graph the Global Active Power against the Date

png(file = "plot2.png")
with(df3, {
     plot(Time2, Global_active_power, type ="l", 
          ylab = "Global Active Power (kilowatts)", xlab="")
}) #end with
dev.off()
