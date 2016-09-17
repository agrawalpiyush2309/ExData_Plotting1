#Setting the working directory
setwd("C:\\Users\\piyush\\Exploratory Data Analysys\\Week 1") 
#Calling the LoadData.R script for load_data function load
source("LoadData.R")
#Getting the filtered data in a variable called final_data
final_data<-load_data()    
#initializing graphics evice for plot print
png("plot3.png", width=480, height=480)
#Initializing a blank plot
plot(final_data$Time,final_data$Sub_metering_1,type="n",
ylab="Energy Sub Metering",xlab="")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
#plotting the points on the plot
points(final_data$Time,final_data$Sub_metering_1,type="l")
points(final_data$Time,final_data$Sub_metering_2,type="l",col="red")
points(final_data$Time,final_data$Sub_metering_3,type="l",col="blue")
#Shutting the device
dev.off()