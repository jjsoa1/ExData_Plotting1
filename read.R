library(sqldf)

read_data <- function(filename='household_power_consumption.txt') {
  data <- read.csv.sql(filename, sql="select * from file where Date == '1/2/2007' OR Date == '2/2/2007'", sep=";", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  data$Calendar_Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  return(data)
}


