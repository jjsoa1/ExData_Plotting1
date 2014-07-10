source('read.R')

energy_sub_metering <- function() {
  data <- read_data("household_power_consumption.txt")
  png(file='plot3.png', width=480, height=480, units='px')
  plot(data[['Calendar_Time']], data[['Sub_metering_1']], type="l", xlab="", ylab="Energy sub metering")
  lines(data[['Calendar_Time']], data[['Sub_metering_2']], type="l", col="red")
  lines(data[['Calendar_Time']], data[['Sub_metering_3']], type="l", col="blue")
  dev.off()
}

energy_sub_metering()
