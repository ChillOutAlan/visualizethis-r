crime <-
    read.csv("data/crimeRatesByState2005.csv",
             sep = ",",
             header = TRUE)

crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime$state != "United States",]

pairs(crime2[,2:9], panel = panel.smooth)