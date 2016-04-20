networkPlot <- function(input_data){
  x <- list(1,2,3,4,5)
  y <- list(1,2,3,4,5)
  plot(x,y,col="blue",pch=19,cex=1)
  #text(x+0.05, y+0.05, labels = as.character(1:12))
}

severityPlot <- function(input_data){
  input_data <- runif(3000, min=0, max=10)
  bar_data <- table(floor(input_data))
  print(bar_data)
  barplot(bar_data, main="Vulnerability Severity Distribution",ylab="count", xlab = "severity")
}