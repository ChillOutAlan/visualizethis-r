library("portfolio")

posts <- read.csv("http://datasets.flowingdata.com/post-data.txt")
posts[1:5,]

map.market(id=posts$id,
           area=posts$views,
           group = posts$category,
           color=posts$comments,
           main = "flowingdatamap")