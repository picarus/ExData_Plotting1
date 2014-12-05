
source("read.R")

df<-readData()

windows( width=480, height=480 )

plot( df$DateTime, df$Global_active_power, col='black', type="l", 
      xlab="",ylab="Global Active Power (kilowatts)")

dev.copy(png, file='plot2.png')
dev.off()