#Setting the working directory
setwd("C:\\Users\\piyush\\Exploratory Data Analysys\\Week 1") 
#Calling the LoadData.R script for load_data function load
source("LoadData.R")
#Getting the filtered data in a variable called final_data
final_data<-load_data()    
#initializing graphics evice for plot print
png("plot2.png", width=480, height=480)
#plotting the plot on the device
plot(final_data$Time,final_data$Global_active_power,type="l",
main="",ylab="Global Active Power (kilowatts)",xlab="")    
#Shutting the device
dev.off()