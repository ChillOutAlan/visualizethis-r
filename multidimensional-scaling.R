education <- read.csv("data/education.csv",
                      header = TRUE)

ed.dis <- dist(education[,2:7])
ed.mds <- cmdscale(ed.dis)

x <- ed.mds[,1]
y <- ed.mds[,2]
plot(x,y,
     type = "n")
text(x, y,
     labels = education$state)