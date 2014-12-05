# load the code for the function readData
source("read.R")

df<-readData()

# create a device
windows( width=480, height=480 )

# create the histogram
hist( df$Global_active_power, 
      col='red', 
      breaks=12,      
      main="Global Active Power",              # title
      xlab="Global Active Power (kilowatts)")  # x label

# copy to a PNG file (no distortions in this case)
dev.copy(png, file='plot1.png')
# close the device
dev.off()