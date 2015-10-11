birth <- read.csv("data/birth-rate.csv")

birth2008 <- birth$X2008[!is.na(birth$X2008)]

d2008 <- density(birth2008)

plot(d2008,
     type = "n")

polygon(d2008,
        col="red",
        border = "grey")