crime <- read.csv("data/crimeRatesByState-formatted.csv")

row.names(crime) <- crime$state
crime <- crime[,2:7]
stars(crime,
      flip.labels = FALSE,
      key.loc = c(15, 1.5))