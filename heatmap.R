library(RColorBrewer)

bball <- 
    read.csv("data/ppg2008.csv",
    header = TRUE)

bball <- bball[order(bball$PTS,
                     decreasing = FALSE),]

row.names(bball) <- bball$Name
bball <- bball[,2:20]

bball_matrix <- data.matrix(bball)

bball_heatmap <- heatmap(bball_matrix,
                         Rowv = NA,
                         Colv = NA,
                         col = brewer.pal(9, "Blues"),
                         scale = "column",
                         margins = c(5,5))