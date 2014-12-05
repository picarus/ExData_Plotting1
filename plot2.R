
# load the code for the function readData
source("read.R")

df<-readData()

windows( width=480, height=480 )

plot( df$DateTime, df$Global_active_power,    # variables
      col='black', 
      type="l",                               # lines
      xlab="",                                # empty x label
      ylab="Global Active Power (kilowatts)") # y label

# copy to a PNG file (no distortions in this case)
dev.copy(png, file='plot2.png')
# close the device
dev.off()