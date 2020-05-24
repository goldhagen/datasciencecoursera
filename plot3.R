

dat <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings = "?")
dat$dt <- strptime(paste(dat$Date,dat$Time,sep=" "), format = "%d/%m/%Y %H:%M:%S")
dat2 <- dat[(dat$Date %in% c("1/2/2007","2/2/2007")),]


png(filename = "plot3.png", width = 480, height = 480)

plot(dat2$dt, dat2$Sub_metering_1, type='l',
     ylab = "Energy sub-metering [Wh]", xlab="")
lines(dat2$dt, dat2$Sub_metering_2, col="red")
lines(dat2$dt, dat2$Sub_metering_3, col="blue")
legend(x="topright", legend=c("sub1","sub2","sub3"), lwd=1, col=c("black","red","blue"))


dev.off()
