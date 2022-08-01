# Download data

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"

download.file(url,mode = "wb",destfile = "NEI_data.zip")

#unzip it

unzip("NEI_data.zip")
