source('read.R')

energy_sub_metering <- function() {
  data <- read_data("household_power_consumption.txt")
  legend <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

  png(file='plot3.png', width=480, height=480, units='px')
  
  # Generate plot.
  plot(data[['Calendar_Time']], data[['Sub_metering_1']], type="l", xlab="", ylab="Energy sub metering")
  lines(data[['Calendar_Time']], data[['Sub_metering_2']], type="l", col="red")
  lines(data[['Calendar_Time']], data[['Sub_metering_3']], type="l", col="blue")
  
  # Add legend.
  legend(x='topright', lty=1, lwd=1, col=c('black', 'blue', 'red'), legend=legend)
  
  dev.off()
}

energy_sub_metering()
