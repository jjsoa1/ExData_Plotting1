source('read.R')

global_active_power_frequency <- function() {
   data <- read_data("household_power_consumption.txt")
   
   # Generate graph and save to png.
   png(file='plot1.png', width=480, height=480, units='px')
   par(bg=NA)
   hist(data$Global_active_power, col="red", breaks=12, main="Global Active Power", xlab="Global Active Power (kilowatts)")
   dev.off()
}

global_active_power_frequency()
