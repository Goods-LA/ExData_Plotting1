powerdata<-read.table("household_power_consumption.txt",sep=";",na.strings="?",stringsAsFactors=FALSE,dec=".",header=TRUE)
powerdata$Date<-as.Date(powerdata$Date,format="%d/%m/%Y")
date1<-as.Date("01/02/2007",format="%d/%m/%Y")
date2<-as.Date("02/02/2007",format="%d/%m/%Y")
powerdata<-subset(powerdata,date1<=Date&date2>=Date)

##Plot1
Global_active_power <- as.numeric(as.character(powerdata$Global_active_power))
png("plot1.png", width=480, height=480)
hist(powerdata$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()