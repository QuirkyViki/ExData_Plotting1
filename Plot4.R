par(mfrow=c(2,2))

with(con,plot(Date,Global_active_power,type="l",xlab="",ylab="Gloable Active Power (killowatts)"))
with(con,plot(Date,Voltage,type="l",xlab="",ylab="Voltage (Volt)"))
with(con,{plot(Sub_metering_1~Date, type="l",
               ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Date,col='Red')
    lines(Sub_metering_3~Date,col='Blue')})
legend("topright", col=c("black", "red", "blue"),bty="n", lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

with(con,plot(Date,Global_reactive_power,type="l",xlab="",
              ylab="Gloable Rective Power (killowatts)"))

dev.copy(png,file="plot4.png", width=480, height=480)
dev.off()