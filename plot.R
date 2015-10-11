fill_colors <- c()
  for ( i in 1:length(hotdogs$New.record) ) {
    if (hotdogs$New.record[i] == 1) {
      fill_colors <- c(fill_colors, "#821122")
    } else {
      fill_colors <- c(fill_colors, "grey")
    }
  }

barplot(hotdogs$Dogs.eaten,
        main="Nathan's Hot Dog Eating Contest Results, 1980-2015",
        space = 0.3,
        names.arg = hotdogs$Year,
        col = fill_colors,
        border = NA,
        xlab = "Year",
        ylab="Dogs eaten")
