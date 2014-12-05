# load the code for the function readData
source("read.R")

df<-readData()

# using windows device and copy the result is distorted
# we need to use directly a PNG device
png( file='plot3.png', width=480, height=480 )

plot( df$DateTime, df$Sub_metering_1, type = "n", # no dots are placed
      xlab="", 
      ylab="Energy sub metering" )
lines( df$DateTime, df$Sub_metering_1, col='black')  # each variable uses one color
lines( df$DateTime, df$Sub_metering_2, col='red' )
lines( df$DateTime, df$Sub_metering_3, col='blue' )

legend( "topright", "(x,y)",
        legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
        col=c('black', 'red', 'blue'), 
        lty=1)

# close the device
dev.off()