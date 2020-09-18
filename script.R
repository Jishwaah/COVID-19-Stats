# Import Data
# dataFolder <- "/Users/jriley/Documents/data"
# fileList <- list.files(path = dataFolder, pattern = "*.csv")
library(ggplot2)

caseData <- read.csv('D:/Dev/R Learning/COVID-19-Stats/sep18Cases.csv', header = TRUE)
deathData <- read.csv('D:/Dev/R Learning/COVID-19-Stats/sep18Deaths.csv', header = TRUE)

#View(caseData, "Case Data")

p1 <- ggplot() + geom_line(aes(y = new, x = day), data = caseData)
p1 + labs(title = "COVID-19 England Case Statistics", x = "Day", y = "Cases", caption = "Data from HM Government")

p2 <- ggplot() + geom_line(aes(y = newDeaths, x = day), data = deathData)
p2 + labs(title = "COVID-19 England Death Statistics", x = "Day", y = "Deaths", caption = "Data from HM Government")

