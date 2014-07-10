source('read.R')

global_active_power_days <- function() {
  dat <- read_data("household_power_consumption.txt")
  
  # Generate graph and write to png.
  png(file='plot2.png', width=480, height=480, units='px')
  plot(x=dat[['Calendar_Time']], y=dat[['Global_active_power']], xlab="", ylab="Global Active Power (kilowatts)", type="l")
  dev.off()
}

global_active_power_days()
