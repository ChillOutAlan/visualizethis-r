subscribers <-
  read.csv("data/flowingdata_subscribers.csv", sep = ",",
           header = TRUE)

plot(subscribers$Subscribers, type = "p",
     ylim =c(0, 30000), xlab = "Day",
     ylab = "Subscribers")
