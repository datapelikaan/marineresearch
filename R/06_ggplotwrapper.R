
# ggplot
library(ggplot2)

ggplot(mtcars, aes(x = wt, y = disp)) +
  geom_point()



par(mar = c(5,5,2,2))
plot(mtcars$wt, mtcars$disp, pch = 19, cex=1.2)

par(mar = c(5,5,2,2))
plot(mtcars$cyl, mtcars$disp, pch = 19, cex=1.2)



mtcars_plot <- function(xvar, yvar, xlab = xvar, ylab = yvar, ...){
  
  par(mar = c(5,5,2,2))
  plot(mtcars[[xvar]], mtcars[[yvar]], 
       pch = 19, cex=1.2, 
       xlab = xlab, ylab = ylab, ...)
  
}


mtcars_plot("wt", "disp", xlab = "Weight (kg)", col = "red")






library(ggplot2)


mtcars_ggplot_plot <- function(xvar, yvar){
  
  ggplot(mtcars, aes(x = !!sym(xvar), y = !!sym(yvar))) +
    geom_point()

    
}

mtcars_ggplot_plot("wt", "disp")



library(dplyr)

mtcars %>%
  filter(cyl %in% c(4,6))


filter_mtcars_cyl <- function(cyl){
  mtcars %>%
    filter(cyl %in% !!cyl)
}

filter_mtcars_cyl(cl = 4)





















