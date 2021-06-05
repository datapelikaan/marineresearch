
# on.exit


pdf("plot1.pdf")
plot(mtcars[[1]], mtcars[[2]])
dev.off()


mtcars_pdf_plot <- function(filename){
  
  pdf(filename)
  on.exit(dev.off())
  
  plot(mtcars[[1]], mtcars[[2]])
  
}


mtcars_pdf_plot("test.pdf")

