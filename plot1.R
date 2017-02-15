#The data is stored in the df3 object
png(file = "plot1.png")
hist(df3$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()