postage <-
  read.csv("data/us-postage.csv",
           sep = ",",
           header = TRUE)

plot(postage$Year,
     type="s",
     main="US Postage Rates for Letters, 1991-2010",
     xlab="Year",
     ylab = "Postage Rate (Dollars)")
