source('read.R')

energy_sub_metering <- function() {
  data <- read_data("household_power_consumption.txt")

  png(file='plot3.png', width=480, height=480, units='px')
  par(bg=NA)
  
  # Generate plot.
  plot(data[['Calendar_Time']], data[['Sub_metering_1']], type="l", xlab="", ylab="Energy sub metering")
  lines(data[['Calendar_Time']], data[['Sub_metering_1']])
  lines(data[['Calendar_Time']], data[['Sub_metering_2']], col="red")
  lines(data[['Calendar_Time']], data[['Sub_metering_3']], col="blue")
  
  # Add legend.
  legend(x='topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c('black', 'blue', 'red'), lty=1, lwd=1)
  
  dev.off()
}

energy_sub_metering()
