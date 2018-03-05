data <- read.Alteryx("#1", mode="data.frame")
rowNo <- nrow(data)
radius <- 1000
theta <- seq(0, (2*pi-0.17), length=rowNo)
xCoords <- round(radius * cos(theta)*100, 0)
yCoords <- round(radius *sin(theta)*100, 0)
dataExt<- data.frame(data, xCoords, yCoords, stringsAsFactors = F)
write.Alteryx(dataExt, 1)


AlteryxGraph(2, width=576, height=576)
#Insert code to plot graph here
#pie(c(0.12, 0.3, 0.26), col = c("purple","violetred1","green3"))
plot(xCoords, yCoords)
invisible(dev.off())
