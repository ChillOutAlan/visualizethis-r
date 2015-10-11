crime <-
    read.csv("data/crimeRatesByState2005.csv",
            sep = ",",
            header = TRUE)

crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime$state != "United States",]

scatter.smooth(crime2$murder,
               crime2$burglary,
               xlim = c(0,10),
               ylim = c(0, 1200),
               xlab = "Murder per 100.000",
               ylab = "Burglary per 100.000",
               main = "Murder VS Burglary in the States")