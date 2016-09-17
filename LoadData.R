#This Scrpt loads the data a R variable as per given criteria
load_data<-function() {     
#Reads the entire data set into a	
a<- read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)
#converts the time column to date & time format
a[,"Time"]<-as.POSIXct(strptime(paste(a[,"Date"], a[,"Time"]), "%d/%m/%Y %H:%M:%S"))
#converts the date column to date format
a[,"Date"]<-as.Date(a[,"Date"],"%d/%m/%Y")
#Subsetting the data as per the given criteria
load_data<-subset(a,Date==as.Date("01/02/2007","%d/%m/%Y")|Date==as.Date("02/02/2007","%d/%m/%Y"))
}