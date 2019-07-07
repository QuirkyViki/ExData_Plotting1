con$Date<-as.POSIXct(paste(con$Date, con$Time), format="%Y-%m-%d %H:%M:%S")
with(con,plot(Date,Global_active_power,type="l",xlab="",ylab="Gloable Active Power (killowatts)"))

dev.copy(png,file="plot2.png", width=480, height=480)
dev.off()