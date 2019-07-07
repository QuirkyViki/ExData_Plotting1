
con$Sub_metering_1<-as.numeric(con$Sub_metering_1)
con$Sub_metering_2<-as.numeric(con$Sub_metering_2)
con$Sub_metering_3<-as.numeric(con$Sub_metering_3)
with(con,{plot(Sub_metering_1~Date, type="l",
              ylab="Global Active Power (kilowatts)", xlab="")
     lines(Sub_metering_2~Date,col='Red')
     lines(Sub_metering_3~Date,col='Blue')})


legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,file="plot3.png", width=480, height=480)
dev.off()