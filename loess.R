unemployment <-
  read.csv("data/unemployment-rate-1948-2010.csv",
           sep = ",")
unemployment[1:10,]

scatter.smooth(x=1:length(unemployment$Value),
               y=unemployment$Value,
               ylim=c(0,11),
               degree=2,
               col="grey",
               span = 0.5,
               main="US unemployment rate 1948-2010",
               xlab = "Unemployment rate",
               ylab = "Year")
