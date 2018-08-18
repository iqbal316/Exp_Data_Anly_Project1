

hpc <- read.csv("C:/Data Science/Coursera/Data Exploration/household_power_consumption.txt", sep = ";",
                stringsAsFactors=F,na.strings="?", header = TRUE)


## To 6 
head(hpc)

## Column Names
names(hpc)

## Row and Column count
dim(hpc)

## Convert date column to date format
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

## Subset on two days 2007-02-02 and 2007-02-02
hpc <- subset(hpc, Date =="2007-02-01" | Date== "2007-02-02")

## Using png function create a .png file for the plot
png("C:/Data Science/Coursera/Data Exploration/Git_DE/plot1.png", 480, 480)

## Create Histogram for global active power
with(hpc,hist(Global_active_power, col ="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

## Turn Off the device
dev.off()


