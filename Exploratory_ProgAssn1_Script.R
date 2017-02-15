#First we need to read in the table...we'll use the readr package
library(readr)
library(lubridate)
options(dplyr.width = Inf)
setwd("C:/Users/Trent/Desktop/Data Science Specialization/Course 4 - Exploratory/ProgAssn1")
df <- read_csv2("household_power_consumption.txt")
df2 <- data.frame(df)
head(df2)
df2$Date <- dmy(df2$Date)
df3 <- subset(df2, Date == ymd("2007-02-01") | Date == ymd("2007-02-02"))
df3$Time2 <- strptime(df3$Date + seconds(df3$Time), format = "%Y-%m-%d %H:%M:%S")
df3$Global_active_power <- as.numeric(gsub('?', '', df3$Global_active_power))
df3$Global_reactive_power <- as.numeric(gsub('?', '', df3$Global_reactive_power))
df3$Global_intensity <- as.numeric(gsub('?', '', df3$Global_intensity))
df3$Sub_metering_1 <- as.numeric(gsub('?', '', df3$Sub_metering_1))
df3$Sub_metering_2 <- as.numeric(gsub('?', '', df3$Sub_metering_2))
df3$Sub_metering_3 <- as.numeric(gsub('?', '', df3$Sub_metering_3))

     
