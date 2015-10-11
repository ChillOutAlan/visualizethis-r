library(mclust)

education <- read.csv("data/education.csv",
                      header = TRUE)

ed.dis <- dist(education[,2:7])
ed.mds <- cmdscale(ed.dis)

ed.mclust <- Mclust(ed.mds)
plot(ed.mclust)