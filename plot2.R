data<-read.table("C:/Users/PRAX/Downloads/Compressed/exdata_data_household_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",dec=".")
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalactive<-as.numeric(subdata$Global_active_power)
datet<-strptime(paste(subdata$Date,subdata$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height = 480)
plot(datet,globalactive,ylab="Global Active Power (kilowatts)",xlab="",type="l")
dev.off()