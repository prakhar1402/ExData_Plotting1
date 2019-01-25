data<-read.table("C:/Users/PRAX/Downloads/Compressed/exdata_data_household_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",dec=".")
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalactive<-as.numeric(subdata$Global_active_power)
png("plot1.png",width=480,height = 480)
hist(globalactive,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)",ylab="Frequancy")
dev.off()