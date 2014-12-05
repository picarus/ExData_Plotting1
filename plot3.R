
source("read.R")

#df<-readData()

png( file='plot3.png', width=480, height=480 )

plot( df$DateTime, df$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering" )
lines( df$DateTime, df$Sub_metering_1, col='black')
lines( df$DateTime, df$Sub_metering_2, col='red' )
lines( df$DateTime, df$Sub_metering_3, col='blue' )

legend( "topright", "(x,y)",
        legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
        col=c('black', 'red', 'blue'), lty=1)


dev.off()