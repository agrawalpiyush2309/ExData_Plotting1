#Setting the working directory
setwd("C:\\Users\\piyush\\Exploratory Data Analysys\\Week 1") 
#Calling the LoadData.R script for load_data function load
source("LoadData.R")
#Getting the filtered data in a variable called final_data
final_data<-load_data()    
#initializing graphics evice for plot print
png("plot1.png", width=400, height=400)
#plotting the plot on the device
hist(final_data$Global_active_power,
main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")    
#Shutting the device
dev.off()