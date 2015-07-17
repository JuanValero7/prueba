Datos=read.table("proy1.txt",sep=";",header=TRUE,na.strings="?")
names(Datos)
Prueba=(Datos$Date=="1/2/2007"|Datos$Date=="2/2/2007")
Dat=Datos[Prueba,]
dates<-as.character(Dat[,1])
time<-as.character(Dat[,2])
x<-paste(dates,time)
day<-strptime(x,"%d/%m/%Y %H:%M:%S")


hist(Dat[,3],xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
png(file="maricoelquelolea.png")
with(Dat,hist(Dat[,3],xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red"))
dev.off()


plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
png(file="maricoelquelolea2.png")
with(Dat,plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l"))
dev.off()


plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(day,Dat[,7],col="black")
lines(day,Dat[,8],col="red")
lines(day,Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

png(file="maricoelquelolea3.png")
plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(Dat[,7],col="black")
lines(Dat[,8],col="red")
lines(Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()


par(mfrow=c(2,2))
plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
plot(day,Dat[,5],xlab="date time",ylab="Voltage",type="l")
plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(day,Dat[,7],col="black")
lines(day,Dat[,8],col="red")
lines(day,Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),bty="n",lty=1,cex=0.5,)
plot(day,Dat[,4],xlab="date time",ylab="Global_reactive_power",type="l")


png(file="maricoelquelolea4.png")
par(mfrow=c(2,2))
plot(day,Dat[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
plot(day,Dat[,5],xlab="date time",ylab="Voltage",type="l")
plot(day,Dat[,7],type="n",xlab="",ylab="Energy sub metering")
lines(day,Dat[,7],col="black")
lines(day,Dat[,8],col="red")
lines(day,Dat[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),bty="n",lty=1,cex=0.5,)
plot(day,Dat[,4],xlab="date time",ylab="Global_reactive_power",type="l")
dev.off()
