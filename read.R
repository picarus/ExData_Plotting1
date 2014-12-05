
###
### function to read the data
### the file is expected to be in the same folder than the code
###

readData<-function() {
  #
  # read the whole file, specifying the column types
  #
  df <- read.csv("household_power_consumption.txt",sep=";",header=TRUE,na.strings=c("?"),
           stringsAsFactors=FALSE,
           colClasses = c("character","character",rep("numeric",7)) ) 
  #
  # filter for the dates we are interested
  #
  filter <- df$Date=="1/2/2007" | df$Date=="2/2/2007"
  ncols<-sum(filter)
  cat("There are ",ncols," observations in the file for the date range.")
  
  #
  # subset the dataset
  #
  
  df <- df[filter,]
  
  # unify date and time on a single variable
  #
  #as.POSIXct(paste(x$date, x$time), format="%Y-%m-%d %H:%M:%S")
  datetime <- paste( df$Date, df$Time)
  df$DateTime <- strptime(datetime, format="%d/%m/%Y %H:%M:%S")
  
  # get rid of the old variables
  df$Date<-NULL
  df$Time<-NULL 
  
  df
  
}

#df<-readData()


