library(shiny)
library(ggplot2)
       
smean <- function(n,y){
        means <- cumsum(rexp(n,1/y)) / (1  : n)
        g <- ggplot(data.frame(x = 1 : n, y = means), aes(x = x, y = y)) 
        g <- g + geom_hline(yintercept = y) + geom_line(size = 1)
        g + labs(x = "Number of samples", y = "sample mean",title="sample means against sample size")

        
        
}

shinyServer(
        function(input,output){
                output$ss <- renderPrint({input$ss})
                output$mu <- renderPrint({input$mu})
                output$plot2 <- renderPlot({smean(input$ss,input$mu)})
                
        }
        )