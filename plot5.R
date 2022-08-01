# plot5.R

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset  Baltimore City fips=="24510" and On-road

baltimore_NEI <- NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD", ]

# Aggregate by sum the total emissions by year
aggregatedTotalByYear <- aggregate(Emissions ~ year, baltimore_NEI, sum)

# Draw plot and save png

png("plot5.png",width=480,height=480)

barplot( aggregatedTotalByYear$Emissions ,
         names.arg=aggregatedTotalByYear$year, 
         xlab="Years", 
         ylab="Total PM 2.5 emission",
         main="Total PM 2.5 emissions at Baltimore City on road various years"
)

dev.off()
