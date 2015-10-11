library("lattice")

birth_yearly <- read.csv("data/birth-rate-yearly.csv")
birth_yearly.new <- birth_yearly[birth_yearly$rate < 132,]
birth_yearly.new$year <- as.character(birth_yearly.new$year)

h <- histogram(~ rate | year,
          data = birth_yearly.new,
          layout = c(10,5))

update(h, index.cond = list(c(41:50, 31:40, 21:30, 11:20, 1:10)))