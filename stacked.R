hot_dog_places <- read.csv("data/hot-dog-places.csv", sep = ",", header = TRUE)

names(hot_dog_places) <- c("2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010")

hot_dog_matrix <- as.matrix(hot_dog_places)

barplot(hot_dog_matrix, border = NA,
        space = 0.25, ylim = c(0,200),
        xlab = "Year", ylab = "Dogs eaten",
        main = "Top Three at the Nathan's Hot Dog Eating Contest")