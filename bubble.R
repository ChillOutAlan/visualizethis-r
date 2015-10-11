crime <-
    read.csv("data/crimeRatesByState2005.tsv",
             header = TRUE,
             sep = "\t")
# Calculate area for circles instead of radius
radius <- sqrt(crime$population / pi)

# Create the circles
symbols(crime$murder,
        crime$burglary,
        circles = radius,
        inches = 0.35,
        fg = "white",
        bg = "red",
        xlab = "Murder rate",
        ylab = "Burglary rate")

# Create the text
text(crime$murder,
     crime$burglary,
     crime$state,
     cex = 0.5)