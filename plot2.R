household_power_consumption <- read.csv("C:/Users/Burkhard/Desktop/Exporitory Dataanalysis/household_power_consumption.txt",
                                        sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
plot.data<-household_power_consumption[household_power_consumption$Date=="1/2/2007" |household_power_consumption$Date=="2/2/2007",]
x <- paste(plot.data$Date, plot.data$Time)

plot.date<-strptime(x, "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png",
    width = 480, height = 480)
plot(plot.date,plot.data$Global_active_power,type="l",ylab="Global Aktive Power (kilowatts)",xlab="")
dev.off()