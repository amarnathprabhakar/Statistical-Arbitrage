rm(list=ls())
#install.packages("R.matlab")
#install.packages("zoo")
#install.packages("tseries")
#install.packages("fUnitRoots")
#install.packages("urca")
#install.packages("vars")
library(tseries) #adf.test; kpss.test
library(fUnitRoots) #adfTest
library(urca) #ca.jo
library(vars)
library(R.matlab)
library(zoo)

setwd("/Users/tillkischkat/Desktop/MSc Statistics/Trimester 3/Statistical Arbitrage/R:MATLAB Code/Cointegration")
source("Cointegration_functions.R")

setwd("/Users/tillkischkat/Desktop/MSc Statistics/Trimester 3/Statistical Arbitrage/R:MATLAB Code/Spread")
source("Spread_functions.R")

fx <- readMat("fx.mat")
fximport <- fx$p 

#aquire data
dt=Matlab2Rdate(fximport[1,1,1]$dt)
tickers=fximport[2,1,1]$tickers
names=fximport[3,1,1]$user.name
px=fximport[4,1,1]$px.last

px.clean=na.omit(px)
remove.dates=attributes(px.clean)$na.action
dt.new=dt[-remove.dates]

data=data.frame(dt.new,px.clean)

names(data)[1]<-paste("Date")
names(data)[2]<-paste("AUDUSD")
names(data)[3]<-paste("GBPUSD")
names(data)[4]<-paste("CADUSD")
names(data)[5]<-paste("EURUSD")
names(data)[6]<-paste("NZDUSD")
names(data)[7]<-paste("ZARUSD")
names(data)[8]<-paste("CHFUSD")

data.1999=subset(data, as.numeric(format(dt.new,'%Y'))==1999)
data.2000=subset(data, as.numeric(format(dt.new,'%Y'))==2000)
data.2001=subset(data, as.numeric(format(dt.new,'%Y'))==2001)
data.2002=subset(data, as.numeric(format(dt.new,'%Y'))==2002)
data.2003=subset(data, as.numeric(format(dt.new,'%Y'))==2003)
data.2004=subset(data, as.numeric(format(dt.new,'%Y'))==2004)
data.2005=subset(data, as.numeric(format(dt.new,'%Y'))==2005)
data.2006=subset(data, as.numeric(format(dt.new,'%Y'))==2006)
data.2007=subset(data, as.numeric(format(dt.new,'%Y'))==2007)
data.2008=subset(data, as.numeric(format(dt.new,'%Y'))==2008)
data.2009=subset(data, as.numeric(format(dt.new,'%Y'))==2009)
data.2010=subset(data, as.numeric(format(dt.new,'%Y'))==2010)
data.2011=subset(data, as.numeric(format(dt.new,'%Y'))==2011)
data.2012=subset(data, as.numeric(format(dt.new,'%Y'))==2012)
data.2013=subset(data, as.numeric(format(dt.new,'%Y'))==2013)
data.2014=subset(data, as.numeric(format(dt.new,'%Y'))==2014)

data=data.2013 #names always same
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[3]),"\n")
create.spread.opt(data[,2][1:130],data[,3][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[4]),"\n")
create.spread.opt(data[,2][1:130],data[,4][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[5]),"\n")
create.spread.opt(data[,2][1:130],data[,5][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[6]),"\n")
create.spread.opt(data[,2][1:130],data[,6][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[7]),"\n")
create.spread.opt(data[,2][1:130],data[,7][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[2]),"S2=",names(data.1999[8]),"\n")
create.spread.opt(data[,2][1:130],data[,8][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[3]),"S2=",names(data.1999[4]),"\n")
create.spread.opt(data[,3][1:130],data[,4][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[3]),"S2=",names(data.1999[5]),"\n")
create.spread.opt(data[,3][1:130],data[,5][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[3]),"S2=",names(data.1999[6]),"\n")
create.spread.opt(data[,3][1:130],data[,6][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[3]),"S2=",names(data.1999[7]),"\n")
create.spread.opt(data[,3][1:130],data[,7][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[3]),"S2=",names(data.1999[8]),"\n")
create.spread.opt(data[,3][1:130],data[,8][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[4]),"S2=",names(data.1999[5]),"\n")
create.spread.opt(data[,4][1:130],data[,5][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[4]),"S2=",names(data.1999[6]),"\n")
create.spread.opt(data[,4][1:130],data[,6][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[4]),"S2=",names(data.1999[7]),"\n")
create.spread.opt(data[,4][1:130],data[,7][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[4]),"S2=",names(data.1999[8]),"\n")
create.spread.opt(data[,4][1:130],data[,8][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[5]),"S2=",names(data.1999[6]),"\n")
create.spread.opt(data[,5][1:130],data[,6][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[5]),"S2=",names(data.1999[7]),"\n")
create.spread.opt(data[,5][1:130],data[,7][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[6]),"S2=",names(data.1999[7]),"\n")
create.spread.opt(data[,6][1:130],data[,7][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[6]),"S2=",names(data.1999[8]),"\n")
create.spread.opt(data[,6][1:130],data[,8][1:130],0,0.05)[[1]]
cat("S1=",names(data.1999[7]),"S2=",names(data.1999[8]),"\n")
create.spread.opt(data[,7][1:130],data[,8][1:130],0,0.05)[[1]]

#1999
GBPUSD_EURUSD1999in=create.spread.opt(data.1999[,3][1:130],data.1999[,5][1:130],0,0.05)[[2]]
GBPUSD_EURUSD1999out=log(data.1999[,3][131:length(data.1999[,1])])-0.2943436*log(data.1999[,5][131:length(data.1999[,1])])-0.4571454

EURUSD_NZDUSD1999in=create.spread.opt(data.1999[,5][1:130],data.1999[,6][1:130],0,0.05)[[2]]
EURUSD_NZDUSD1999out=log(data.1999[,6][131:length(data.1999[,1])])-0.03061783*log(data.1999[,5][131:length(data.1999[,1])])+0.61850363

NZDUSD_ZARUSD1999in=create.spread.opt(data.1999[,6][1:130],data.1999[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD1999out=log(data.1999[,6][131:length(data.1999[,1])])-0.1119865*log(data.1999[,7][131:length(data.1999[,1])])+0.4131674

#2000
AUDUSD_EURUSD2000in=create.spread.opt(data.2000[,2][1:130],data.2000[,5][1:130],0,0.05)[[2]]
AUDUSD_EURUSD2000out=log(data.2000[,5][131:length(data.2000[,1])])-0.7761145*log(data.2000[,2][131:length(data.2000[,1])])-0.3429118

GBPUSD_NZDUSD2000in=create.spread.opt(data.2000[,3][1:130],data.2000[,6][1:130],0,0.05)[[2]]
GBPUSD_NZDUSD2000out=log(data.2000[,6][131:length(data.2000[,1])])-0.9965523*log(data.2000[,3][131:length(data.2000[,1])])+1.1660807

NZDUSD_ZARUSD2000in=create.spread.opt(data.2000[,6][1:130],data.2000[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD2000out=log(data.2000[,6][131:length(data.2000[,1])])-0.5801434*log(data.2000[,7][131:length(data.2000[,1])])-0.3753921

#2002
AUDUSD_ZARUSD2002in=create.spread.opt(data.2002[,2][1:130],data.2002[,7][1:130],0,0.05)[[2]]
AUDUSD_ZARUSD2002out=log(data.2002[,7][131:length(data.2002[,1])])-1.454132*log(data.2002[,2][131:length(data.2002[,1])])+1.483318

GPBUSD_EURUSD2002in=create.spread.opt(data.2002[,3][1:130],data.2002[,5][1:130],0,0.05)[[2]]
GPBUSD_EURUSD2002out=log(data.2002[,3][131:length(data.2002[,1])])-0.4790696*log(data.2002[,5][131:length(data.2002[,1])])-0.4194085

GBPUSD_CHFUSD2002in=create.spread.opt(data.2002[,3][1:130],data.2002[,8][1:130],0,0.05)[[2]]
GBPUSD_CHFUSD2002out=log(data.2002[,3][131:length(data.2002[,1])])-0.4514323*log(data.2002[,8][131:length(data.2002[,1])])-0.5898335

CADUSD_NZDUSD2002in=create.spread.opt(data.2002[,4][1:130],data.2002[,6][1:130],0,0.05)[[2]]
CADUSD_NZDUSD2002out=log(data.2002[,4][131:length(data.2002[,1])])-0.3047432*log(data.2002[,6][131:length(data.2002[,1])])+0.2062303

CADUSD_ZARUSD2002in=create.spread.opt(data.2002[,4][1:130],data.2002[,7][1:130],0,0.05)[[2]]
CADUSD_ZARUSD2002out=log(data.2002[,7][131:length(data.2002[,1])])-3.068018*log(data.2002[,4][131:length(data.2002[,1])])+1.003056

NZDUSD_ZARUSD2002in=create.spread.opt(data.2002[,6][1:130],data.2002[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD2002out=log(data.2002[,7][131:length(data.2002[,1])])-0.9742917*log(data.2002[,6][131:length(data.2002[,1])])+1.6038925

#2003
EURUSD_ZARUSD2003in=create.spread.opt(data.2003[,5][1:130],data.2003[,6][1:130],0,0.05)[[2]]
EURUSD_ZARUSD2003out=log(data.2003[,6][131:length(data.2003[,1])])-0.6915654*log(data.2003[,5][131:length(data.2003[,1])])+0.6497105

#2004
GBPUSD_CADUSD2004in=create.spread.opt(data.2004[,3][1:130],data.2004[,4][1:130],0,0.05)[[2]]
GBPUSD_CADUSD2004out=log(data.2004[,3][131:length(data.2004[,1])])-0.3707325*log(data.2004[,4][131:length(data.2004[,1])])-0.7079119

#2005
GBPUSD_CADUSD2005in=create.spread.opt(data.2005[,2][1:130],data.2005[,5][1:130],0,0.05)[[2]]
GBPUSD_CADUSD2005out=log(data.2005[,2][131:length(data.2005[,1])])-0.2612146*log(data.2005[,5][131:length(data.2005[,1])])+0.3228722

AUDUSD_CHFUSD2005in=create.spread.opt(data.2005[,2][1:130],data.2005[,8][1:130],0,0.05)[[2]]
AUDUSD_CHFUSD2005out=log(data.2005[,2][131:length(data.2005[,1])])-0.2779424*log(data.2005[,8][131:length(data.2005[,1])])+0.2058429

CADUSD_EURUSD2005in=create.spread.opt(data.2005[,4][1:130],data.2005[,5][1:130],0,0.05)[[2]]
CADUSD_EURUSD2005out=log(data.2005[,4][131:length(data.2005[,1])])-0.2180515*log(data.2005[,5][131:length(data.2005[,1])])+0.2654710

CADUSD_ZARUSD2005in=create.spread.opt(data.2005[,4][1:130],data.2005[,7][1:130],0,0.05)[[2]]
CADUSD_ZARUSD2005out=log(data.2005[,4][131:length(data.2005[,1])])-0.1156222641*log(data.2005[,7][131:length(data.2005[,1])])-0.0001182619

CADUSD_CHFUSD2005in=create.spread.opt(data.2005[,4][1:130],data.2005[,8][1:130],0,0.05)[[2]]
CADUSD_CHFUSD2005out=log(data.2005[,4][131:length(data.2005[,1])])-0.2164138*log(data.2005[,8][131:length(data.2005[,1])])+0.1706892

EURUSD_ZARUSD2005in=create.spread.opt(data.2005[,5][1:130],data.2005[,7][1:130],0,0.05)[[2]]
EURUSD_ZARUSD2005out=log(data.2005[,7][131:length(data.2005[,1])])-1.527619*log(data.2005[,5][131:length(data.2005[,1])])+2.207623

#2006
CADUSD_EURUSD2006in=create.spread.opt(data.2006[,4][1:130],data.2006[,5][1:130],0,0.05)[[2]]
CADUSD_EURUSD2006out=log(data.2006[,4][131:length(data.2006[,1])])-0.6264061*log(data.2006[,5][131:length(data.2006[,1])])+0.2591619

#2007
AUDUSD_GBPUSD2007in=create.spread.opt(data.2007[,2][1:130],data.2007[,3][1:130],0,0.05)[[2]]
AUDUSD_GBPUSD2007out=log(data.2007[,3][131:length(data.2007[,1])])-0.2704304*log(data.2007[,2][131:length(data.2007[,1])])-0.7356845

AUDUSD_NZDUSD2007in=create.spread.opt(data.2007[,2][1:130],data.2007[,6][1:130],0,0.05)[[2]]
AUDUSD_NZDUSD2007out=log(data.2007[,6][131:length(data.2007[,1])])-1.14162634*log(data.2007[,2][131:length(data.2007[,1])])+0.08818787

AUDUSD_ZARUSD2007in=create.spread.opt(data.2007[,2][1:130],data.2007[,7][1:130],0,0.05)[[2]]
AUDUSD_ZARUSD2007out=log(data.2007[,7][131:length(data.2007[,1])])-0.3011745*log(data.2007[,2][131:length(data.2007[,1])])+1.9048913

GBPUSD_CADUSD2007in=create.spread.opt(data.2007[,3][1:130],data.2007[,4][1:130],0,0.05)[[2]]
GBPUSD_CADUSD2007out=log(data.2007[,3][131:length(data.2007[,1])])-0.1829558*log(data.2007[,4][131:length(data.2007[,1])])-0.7012179

GBPUSD_NZDUSD2007in=create.spread.opt(data.2007[,3][1:130],data.2007[,7][1:130],0,0.05)[[2]]
GBPUSD_NZDUSD2007out=log(data.2007[,7][131:length(data.2007[,1])])-1.225895*log(data.2007[,3][131:length(data.2007[,1])])+2.800310

CADUSD_NZDUSD2007in=create.spread.opt(data.2007[,4][1:130],data.2007[,6][1:130],0,0.05)[[2]]
CADUSD_NZDUSD2007out=log(data.2007[,6][131:length(data.2007[,1])])-0.8302229*log(data.2007[,4][131:length(data.2007[,1])])+0.2263998

CADUSD_ZARUSD2007in=create.spread.opt(data.2007[,4][1:130],data.2007[,7][1:130],0,0.05)[[2]]
CADUSD_ZARUSD2007out=log(data.2007[,7][131:length(data.2007[,1])])-0.2089348*log(data.2007[,4][131:length(data.2007[,1])])+1.9426239

EURUSD_ZARUSD2007in=create.spread.opt(data.2007[,5][1:130],data.2007[,7][1:130],0,0.05)[[2]]
EURUSD_ZARUSD2007out=log(data.2007[,7][131:length(data.2007[,1])])-0.5741235*log(data.2007[,5][131:length(data.2007[,1])])+2.1324134

NZDUSD_ZARUSD2007in=create.spread.opt(data.2007[,6][1:130],data.2007[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD2007out=log(data.2007[,7][131:length(data.2007[,1])])-0.2691827*log(data.2007[,6][131:length(data.2007[,1])])+1.8798487

#2008
CADUSD_EURUSD2008in=create.spread.opt(data.2008[,4][1:130],data.2008[,5][1:130],0,0.05)[[2]]
CADUSD_EURUSD2008out=log(data.2008[,4][131:length(data.2008[,1])])+0.027750612*log(data.2008[,5][131:length(data.2008[,1])])-0.004739264

CADUSD_NZDUSD2008in=create.spread.opt(data.2008[,4][1:130],data.2008[,6][1:130],0,0.05)[[2]]
CADUSD_NZDUSD2008out=log(data.2008[,4][131:length(data.2008[,1])])-0.28066670*log(data.2008[,6][131:length(data.2008[,1])])-0.06165252

CADUSD_CHFUSD2008in=create.spread.opt(data.2008[,4][1:130],data.2008[,8][1:130],0,0.05)[[2]]
CADUSD_CHFUSD2008out=log(data.2008[,4][131:length(data.2008[,1])])+0.029996963*log(data.2008[,8][131:length(data.2008[,1])])+0.008519028

ZARUSD_CHFUSD2008in=create.spread.opt(data.2008[,7][1:130],data.2008[,8][1:130],0,0.05)[[2]]
ZARUSD_CHFUSD2008out=log(data.2008[,7][131:length(data.2008[,1])])+0.9935755*log(data.2008[,8][131:length(data.2008[,1])])+2.0822246

#2009
GBPUSD_EURUSD2009in=create.spread.opt(data.2009[,3][1:130],data.2009[,5][1:130],0,0.05)[[2]]
GBPUSD_EURUSD2009out=log(data.2009[,5][131:length(data.2009[,1])])-0.57258352*log(data.2009[,5][131:length(data.2009[,1])])-0.05888736

CADUSD_EURUSD2009in=create.spread.opt(data.2009[,4][1:130],data.2009[,5][1:130],0,0.05)[[2]]
CADUSD_EURUSD2009out=log(data.2009[,5][131:length(data.2009[,1])])-0.6815401*log(data.2009[,4][131:length(data.2009[,1])])-0.4149208

EURUSD_NZDUSD2009in=create.spread.opt(data.2009[,5][1:130],data.2009[,6][1:130],0,0.05)[[2]]
EURUSD_NZDUSD2009out=log(data.2009[,5][131:length(data.2009[,1])])-0.4152139*log(data.2009[,6][131:length(data.2009[,1])])-0.5227472

NZDUSD_ZARUSD2009in=create.spread.opt(data.2009[,6][1:130],data.2009[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD2009out=log(data.2009[,6][131:length(data.2009[,1])])-0.8101382*log(data.2009[,7][131:length(data.2009[,1])])-1.2281894

#2010
GBPUSD_EURUSD2010in=create.spread.opt(data.2010[,3][1:130],data.2010[,6][1:130],0,0.05)[[2]]
GBPUSD_EURUSD2010out=log(data.2010[,6][131:length(data.2010[,1])])-0.4744505*log(data.2010[,3][131:length(data.2010[,1])])+0.5504355

EURUSD_NZDUSD2010in=create.spread.opt(data.2010[,5][1:130],data.2010[,6][1:130],0,0.05)[[2]]
EURUSD_NZDUSD2010out=log(data.2010[,6][131:length(data.2010[,1])])-0.2899874*log(data.2010[,5][131:length(data.2010[,1])])+0.4320183

#2011
AUDUSD_ZARUSD2011in=create.spread.opt(data.2011[,2][1:130],data.2011[,7][1:130],0,0.05)[[2]]
AUDUSD_ZARUSD2011out=log(data.2011[,7][131:length(data.2011[,1])])-0.5300732*log(data.2011[,2][131:length(data.2011[,1])])+1.9481720

GBPUSD_CADUSD2011in=create.spread.opt(data.2011[,3][1:130],data.2011[,4][1:130],0,0.05)[[2]]
GBPUSD_CADUSD2011out=log(data.2011[,3][131:length(data.2011[,3])])-0.8142604*log(data.2011[,4][131:length(data.2011[,1])])-0.4611711

CADUSD_ZARUSD2011in=create.spread.opt(data.2011[,4][1:130],data.2011[,7][1:130],0,0.05)[[2]]
CADUSD_ZARUSD2011out=log(data.2011[,7][131:length(data.2011[,3])])-1.257798*log(data.2011[,4][131:length(data.2011[,1])])+1.960025

EURUSD_ZARUSD2011in=create.spread.opt(data.2011[,5][1:130],data.2011[,7][1:130],0,0.05)[[2]]
EURUSD_ZARUSD2011out=log(data.2011[,7][131:length(data.2011[,3])])-0.4548327*log(data.2011[,5][131:length(data.2011[,1])])+2.0848094

#2012
CADUSD_CHFUSD2012in=create.spread.opt(data.2012[,4][1:130],data.2012[,8][1:130],0,0.05)[[2]]
CADUSD_CHFUSD2012out=log(data.2012[,4][131:length(data.2012[,1])])-0.63311452*log(data.2012[,8][131:length(data.2012[,1])])+0.05245177

EURUSD_ZARUSD2012in=create.spread.opt(data.2012[,5][1:130],data.2012[,7][1:130],0,0.05)[[2]]
EURUSD_ZARUSD2012out=log(data.2012[,5][131:length(data.2012[,1])])-0.5514706*log(data.2012[,7][131:length(data.2012[,1])])-1.4024219

NZDUSD_ZARUSD2012in=create.spread.opt(data.2012[,6][1:130],data.2012[,7][1:130],0,0.05)[[2]]
NZDUSD_ZARUSD2012out=log(data.2012[,6][131:length(data.2012[,1])])-0.7224593*log(data.2012[,7][131:length(data.2012[,1])])-1.2781680

### PLOT
s=data.2013$EURUSD
z=(s-mean(s))/sd(s)
par(mfrow=c(2,1))
ts.plot(s,ylab="EUR/USD",xlab="Time (in days)",main="EUR vs. USD, 2013")
ts.plot(z,ylab="Z(n)",xlab="Time (in days)",main="Z-Score for EUR vs. USD, 2013",ylim=c(-2.5,2.5))
abline(h=2,col="red")
abline(h=-2,col="red")
abline(h=0.75,col="green")
abline(h=-0.5,col="green")
