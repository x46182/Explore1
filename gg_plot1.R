library(ggplot2)
windows()
gg <- ggplot(data = df3, aes(x=Global_active_power)) + 
        geom_histogram(aes(y = ..count..), binwidth = .51, col = "black", fill = "red") +
        #scale_x_continuous(breaks = seq(0,11,.5))+
        scale_x_continuous(expand = c(0, 0)) + scale_y_continuous(expand = c(0, 0))+
        labs(title = "Global Active Power", y = "Frequency", x = "Global Active Power (kilowatts")
gg

one <- hist(df3$Global_active_power)
one$breaks
str(geom_histogram)
