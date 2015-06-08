library(datasets)

setwd("c:\\R\\wd\\exPlotting")
data = read.csv("household_power_consumption.txt", 
                  head=TRUE, sep=";")

febdata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

febdata$day <- weekdays(as.Date(febdata$Date, format="%d/%m/%y"))

png(file="Plot1.png", width=480, height=480)
hist(as.numeric(as.vector(febdata$Global_active_power)), 
     xlab = "Global Active Power (kilowatts)",
     main="Global Active Power",
     col = "Red"
     )
dev.off

<<<<<<< HEAD





head(febdata)
names(febdata)
class(febdata$Global_active_power)
febdata$Global_active_power
head(febdata)
head(as.numeric(febdata$Global_active_power))
head(febdata$Global_active_power)
=======
>>>>>>> 0353c679f00580152d93f9ecb92c50b517e90a0f
