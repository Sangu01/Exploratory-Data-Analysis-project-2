# plot1.R

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Aggregate by sum the total emissions by year
aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)

# Draw plot and save png

png("plot1.png",width=480,height=480)

barplot( aggregatedTotalByYear$Emissions ,
         names.arg=aggregatedTotalByYear$year, 
         xlab="Years", 
         ylab="Total PM 2.5 emission",
         main="Total PM 2.5 emissions at various years"
         )

dev.off()
