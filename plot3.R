## read data set for period 1st feb 2007 to 2nd feb 2007 ##

library(datasets)

setwd("c:\\R\\wd\\exPlotting")
data = read.csv("household_power_consumption.txt", 
                head=TRUE, sep=";")

febdata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

febdata$datetime <- strptime(paste(febdata$Date, febdata$Time),format="%d/%m/%Y %H:%M:%S")

png(file="Plot3.png", width=480, height=480)

plot(febdata$datetime,as.vector(febdata$Sub_metering_1),col="black", type="l", ylab="Energy sub metering",xlab="DateTime")
lines(febdata$datetime,as.vector(febdata$Sub_metering_2),col="blue", type="l")
lines(febdata$datetime,as.vector(febdata$Sub_metering_3),col="red", type="l")

dev.off()
