
source("read.R")

df<-readData()

windows( width=480, height=480 )

hist( df$Global_active_power, col='red', breaks=12,
      main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.copy(png, file='plot1.png')
dev.off()