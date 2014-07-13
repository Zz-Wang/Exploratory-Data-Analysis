#Exploratory Data
#read file
d <- read.table("C://Users//User//Documents//Exploratory Data Analysis//household_power_consumption.txt", header = TRUE, sep = ";")
#subsetting
newdata <- d[ which(d$Date=='1/2/2007' | d$Date=='2/2/2007'), ]
#View(newdata)
gap <- newdata$Global_active_power
gap <- as.numeric(gap)
gap <- gap/1000

# Plot 1
hist(gap, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
