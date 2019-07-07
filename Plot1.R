setwd("~/Desktop/Coursera/Data Science（JHU）/4. Exploratory Data Analysis")

consumption<-read.csv("household_power_consumption.txt",sep=";",header=TRUE)
con<-subset(consumption,Date=="1/2/2007"|Date=="2/2/2007")
con$Date<-as.Date(con$Date,"%d/%m/%Y")
con$Global_active_power<-as.numeric(as.character(con$Global_active_power))
hist((con$Global_active_power),col="red",main="Gloable Active Power",xlab="Gloable Active Power(killowatts)")

dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()