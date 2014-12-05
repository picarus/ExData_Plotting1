
source("read.R")

df<-readData()

png( file='plot4.png', width=480, height=480 )

par(mfrow=c(2,2))

# plot 1: same than plot2.png
plot( df$DateTime, df$Global_active_power, col='black', type="l", 
      xlab="",ylab="Global Active Power")

#plot 2:

plot( df$DateTime, df$Voltage, col='black', type="l", 
      xlab="datetime",ylab="Voltage")

#plot 3: same than plot3.png
plot( df$DateTime, df$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering" )
lines( df$DateTime, df$Sub_metering_1, col='black')
lines( df$DateTime, df$Sub_metering_2, col='red' )
lines( df$DateTime, df$Sub_metering_3, col='blue' )

legend("topright", "(x,y)",legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'), lty=1, bty="n")

#plot 4:
plot( df$DateTime, df$Global_reactive_power, col='black', type="l",
      xlab="datetime",ylab="Global_reactive_power")



dev.off()