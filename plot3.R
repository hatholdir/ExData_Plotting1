household_power_consumption <- read.csv("C:/Users/Burkhard/Desktop/Exporitory Dataanalysis/household_power_consumption.txt",
                                        sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
plot.data<-household_power_consumption[household_power_consumption$Date=="1/2/2007" |household_power_consumption$Date=="2/2/2007",]
x <- paste(plot.data$Date, plot.data$Time)

plot.date<-strptime(x, "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png",
    width = 480, height = 480)

plot(plot.date,plot.data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(plot.date,plot.data$Sub_metering_2,type="l",col="red")
lines(plot.date,plot.data$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2")
       , col = c("black", "red", "blue"),lty=1, lwd=1, cex = 0.8)

dev.off()
