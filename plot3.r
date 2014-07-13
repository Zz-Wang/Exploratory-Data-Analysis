#Exploratory Data
#read file
d <- read.table("C://Users//User//Documents//Exploratory Data Analysis//household_power_consumption.txt", header = TRUE, sep = ";")
#subsetting
newdata <- d[ which(d$Date=='1/2/2007' | d$Date=='2/2/2007'), ]
#View(newdata)
gap <- newdata$Global_active_power
gap <- as.numeric(gap)
gap <- gap/1000
#Converting dates
newdatetime <- paste(as.Date(newdata$Date), newdata$Time)
newdata$Datetime <- as.POSIXct(newdatetime)

#Plot 3
with(data, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
