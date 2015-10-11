population <-
  read.csv("data/world-population.csv", sep = ",",
           header = TRUE)

plot(population$Year, population$Population,
     type = "l", ylim =c(0, 7000000000),
     xlab = "Year", ylab = "Population")
