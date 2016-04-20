NetworkPlot <- function(input_data){
  x <- rnorm(1,2,3,4,5)
  y <- rnorm(1,2,3,4,5)
  plot(x,y,col="blue",pch=19,cex=1)
  text(x+0.05, y+0.05, labels = as.character(1:12))
}