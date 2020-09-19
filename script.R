# Import Relevant Libraries
library(ggplot2)

# Read all CSV files and load in as variable
caseData <- read.csv('D:/Dev/R Learning/COVID-19-Stats/sep18Cases.csv', header = TRUE)
deathData <- read.csv('D:/Dev/R Learning/COVID-19-Stats/sep18Deaths.csv', header = TRUE)
totalCaseData <- read.csv('D:/Dev/R Learning/COVID-19-Stats/sep18TotalCases.csv', header = TRUE)

# View all data in the IDE to check it is reading properly
##View(caseData, "Case Data")
##View(deathData, "Deaths Data")
##View(totalCaseData, "Total Cumulative Cases")

# Graph 1 - Cases Data
p1 <- ggplot() + geom_line(aes(y = new, x = day), data = caseData)
p1 + labs(title = "COVID-19 England Case Statistics", x = "Day", y = "Cases", caption = "Data from HM Government")

# Graph 2 - Deaths Data
p2 <- ggplot() + geom_line(aes(y = newDeaths, x = day), data = deathData)
p2 + labs(title = "COVID-19 England Death Statistics", x = "Day", y = "Deaths", caption = "Data from HM Government")

# Graph 3 - Cumulative Cases Data
p3 <- ggplot() + geom_line(aes(y = totalCaseData, x = day), data = totalCaseData)
p3 + labs(title = "COVID-19 England Cumulative Case Statistics", x = "Day", y = "Cumulative Cases", caption = "Data from HM Government")