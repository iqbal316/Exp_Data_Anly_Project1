
## Read the txt file to hpc##
hpc <- read.csv("C:/Data Science/Coursera/Data Exploration/household_power_consumption.txt", sep = ";",
                stringsAsFactors=F,na.strings="?", header = TRUE)


## Verify Top 6 rows
head(hpc)

## Verify Column Names
names(hpc)

## Verify Row and Column count
dim(hpc)

## Convert date column to date format
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

## Subset on two days 2007-02-02 and 2007-02-02
hpc <- subset(hpc, Date =="2007-02-01" | Date== "2007-02-02")

## Concatenate date and time column to new colume date_time
hpc$Date_Time <- paste(hpc$Date,hpc$Time)

hpc$Date_Time <- as.POSIXct(hpc$Date_Time)


## Using png function create a .png file for the plot
png("C:/Data Science/Coursera/Data Exploration/Git_DE/plot2.png", 480, 480)

## Create plot for global active power vs Date Time
plot(hpc$Date_Time, hpc$Global_active_power, type = "l"
                , xlab = "", ylab = "Global Active Power (kilowatts)")

## Turn Off the device
dev.off()


