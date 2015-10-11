household_power_consumption <- read.csv("C:/Users/Burkhard/Desktop/Exporitory Dataanalysis/household_power_consumption.txt",
                                        sep=";", quote="", na.strings="?", stringsAsFactors=FALSE)
plot.data<-household_power_consumption[household_power_consumption$Date=="1/2/2007" |household_power_consumption$Date=="2/2/2007",]

png(filename = "plot1.png",
    width = 480, height = 480)
hist(plot.data$Global_active_power,col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()
