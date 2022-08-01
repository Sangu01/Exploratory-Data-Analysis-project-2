# plot4.R

#load ggplot
library(ggplot2)

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# merge the two data sets 
NEISCC <- merge(NEI, SCC, by="SCC")

# To find how have emissions from coal combustion-related sources changed from 1999-2008,
# Find word 'coal' in column 'EI.Sector'

coalRec <- grepl(pattern = 'coal', x = NEISCC$EI.Sector , ignore.case = TRUE )
NEISCC_coal <- NEISCC[coalRec,]


# Aggregate by sum the total emissions by year
aggregatedTotalByYear <- aggregate(Emissions ~ year  , NEISCC_coal , sum)

# Draw plot and save png

png("plot4.png",width=480,height=480)

g <- ggplot(aggregatedTotalByYear, aes(factor(year), Emissions))

g <- g + geom_bar(stat="identity") +
      xlab("year") +
      ylab("Total PM 2.5 Emissions") +
      ggtitle("Total Emissions coal combustion-related sources from 1999 to 2008")
print(g)


dev.off()
