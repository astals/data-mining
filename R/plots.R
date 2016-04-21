networkPlot <- function(input_data){
  x <- list(1,2,3,4,5)
  y <- list(1,2,3,4,5)
  plot(x,y,col="blue",pch=19,cex=1)
  #text(x+0.05, y+0.05, labels = as.character(1:12))
}

severityPlot <- function(input_data){
  input_data <- runif(5, min=0, max=10)
  input_data <- floor(input_data)
  bar_data <- matrix(ncol= 11, nrow = 2, data=rbind(0:10,+rep(0,11)))
  l=list()
  colnames<-c('0','1','2','3', '4', '5', '6', '7','8','9','10')
  for (i in list(0:10)[1]){
    append(l,length(which(input_data==i )))
  }
  print(bar_data)
  paleta <- colorRampPalette(c("yellow","red"))
  colors <- paleta(10)
  colname
  barplot(l, main="Vulnerability Severity Distribution", names.arg=colnames, col=colors,ylab="count", xlab = "severity")
}