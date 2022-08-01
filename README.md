# Coursera: Exploratory Data Analysis - Project 2 [ Week 4 ]

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

### My Solution

First `Download` and `extract` files using [download.R](download.R)

```R
#download file

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"

download.file(url,mode = "wb",destfile = "NEI_data.zip")

#unzip it

unzip("NEI_data.zip")


```

- [plot 1.R](plot1.R) 
  
      ![](plot1.png)
      
- [plot 2.R](plot2.R)  

      ![](plot2.png)
      
- [plot 3.R](plot3.R)  

      ![](plot3.png)
      
- [plot 4.R](plot4.R)  

      ![](plot4.png)
      
- [plot 5.R](plot5.R)  

      ![](plot5.png)
      
- [plot 6.R](plot6.R)  

      ![](plot6.png)
