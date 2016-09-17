#Setting the working directory
setwd("C:\\Users\\piyush\\Exploratory Data Analysys\\Week 1") 
#Calling the LoadData.R script for load_data function load
source("LoadData.R")
#Getting the filtered data in a variable called final_data
final_data<-load_data()    
#initializing graphics evice for plot print
png("plot4.png", width=480, height=480)
#Settingup the parameters for upcoming plot
par(mfrow=c(2,2))
with(final_data,{
	plot(Time,Global_active_power,type="l",main="",ylab="Global Active Power",xlab="")
	plot(Time,Voltage,type="l",main="",ylab="Voltage",xlab="datetime")
	plot(Time,Sub_metering_1,type="n",ylab="Energy Sub Metering",xlab="")		
		points(Time,Sub_metering_1,type="l")
		points(Time,Sub_metering_2,type="l",col="red")
		points(Time,Sub_metering_3,type="l",col="blue")
		legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
	plot(Time,Global_reactive_power,type="l",main="",xlab="datetime",ylab="Global_reactive_power")})
#Shutting the device
dev.off()