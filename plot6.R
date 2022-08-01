# plot6.R

# Load the NEI & SCC data frames.
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset  Baltimore City fips=="24510" and On-road

baltimore_NEI <- NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD", ]
la_NEI <- NEI[NEI$fips=="06037" & NEI$type=="ON-ROAD", ]

# Aggregate by sum the total emissions by year
emissionBaltimore  <- aggregate(Emissions ~ year, baltimore_NEI, sum)
emissionLa <- aggregate(Emissions ~ year, la_NEI, sum)

# Draw plot and save png

png("plot6.png",width=960,height=960)

# get range of chart y axis.

rng <- range(emissionBaltimore$Emissions, emissionLa$Emissions)


# Draw main graph area and Baltimore Emissions
plot(x = emissionBaltimore$year , y = emissionBaltimore$Emissions, 
     type = "p", pch = 16, col = "blue", 
     ylab = "PM2.5 Emission (in tons)", xlab = "Year",  ylim = rng, 
     main = "Motor vehicle related PM2.5 Emission in LA & Baltimore from 1999 to 2008")
lines(x =emissionBaltimore$year, y = emissionBaltimore$Emissions, col = "blue")

# Draw la emissions
points(x = emissionLa$year, y = emissionLa$Emissions, pch = 16, col = "green")
lines(x =emissionLa$year, y = emissionLa$Emission, col = "green")

# Draw Legends
legend("right", legend = c("LA", "Baltimore"), pch = 20, lty=1, col = c("green", "blue"), title = "City")


dev.off()
