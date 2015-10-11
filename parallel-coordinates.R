library(lattice)

education <- read.csv("data/education.csv",
                      header = TRUE)

reading_colors <- c()
for (i in 1:length(education$state)) {
    if (education$reading[i] > 523) {
        col <- "#A1CD3A"
    } else {
        col <- "#18BCCC"
    }
    reading_colors <- c(reading_colors, col)
}

parallelplot(education[,2:7],
             horizontal.axis = FALSE,
             col = reading_colors)