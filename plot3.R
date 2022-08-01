# plot3.R

#load ggplot
library(ggplot2)

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset  Baltimore City

baltimore_NEI <- NEI[NEI$fips=="24510", ]

# Aggregate by sum the total emissions by year
aggregatedTotalByYear <- aggregate(Emissions ~ year + type , baltimore_NEI, sum)

# Draw plot and save png

png("plot3.png",width=480,height=480)

g <- ggplot(aggregatedTotalByYear, aes(year, Emissions, color = type))

g <- g + geom_line() +
      xlab("year") +
      ylab("Total PM 2.5 Emissions") +
      ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
print(g)


dev.off()
