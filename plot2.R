

dat <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings = "?")
dat$dt <- strptime(paste(dat$Date,dat$Time,sep=" "), format = "%d/%m/%Y %H:%M:%S")
dat2 <- dat[(dat$Date %in% c("1/2/2007","2/2/2007")),]


png(filename = "plot2.png", width = 480, height = 480)

plot(dat2$dt, dat2$Global_active_power, type='l',
     ylab = "Global Active Power [kW]")



dev.off()
