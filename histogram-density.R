library("lattice")

birth <- read.csv("data/birth-rate.csv")
birth2008 <- birth$X2008[!is.na(birth$X2008)]
d2008 <- density(birth2008)

histogram(birth$X2008,
          breaks = 10)
lines(d2008)
