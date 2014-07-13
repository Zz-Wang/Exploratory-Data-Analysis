#Exploratory Data
#read file
d <- read.table("C://Users//User//Documents//Exploratory Data Analysis//household_power_consumption.txt", header = TRUE, sep = ";")
#subsetting
newdata <- d[ which(d$Date=='1/2/2007' | d$Date=='2/2/2007'), ]
#View(newdata)
gap <- newdata$Global_active_power
gap <- as.numeric(gap)
gap <- gap/1000

# Converting dates
newdatetime <- paste(as.Date(newdata$Date), newdata$Time)
newdata$Datetime <- as.POSIXct(newdatetime)

# Plot 2
plot(gap~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

