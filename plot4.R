source('read.R')

multiple_plots <- function() {
  data <- read_data("household_power_consumption.txt")
  png(file='plot4.png', width=480, height=480, units='px')
  par (mfrow = c(2,2))
  plot(data[['Calendar_Time']], data[['Global_active_power']], xlab="", ylab="Global Active Power", type="l")
  plot(data[['Calendar_Time']], data[['Voltage']], xlab="datetime", ylab="Voltage", type="l")
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  plot(data[['Calendar_Time']], data[['Sub_metering_1']], type="l", xlab="", ylab="Energy sub metering")
  lines(data[['Calendar_Time']], data[['Sub_metering_2']], type="l", col="red")
  lines(data[['Calendar_Time']], data[['Sub_metering_3']], type="l", col="blue")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
  plot(data[['Calendar_Time']], data[['Global_reactive_power']], xlab="datetime", ylab="Global_reactive_power", type="l")
  dev.off()
}

multiple_plots()
