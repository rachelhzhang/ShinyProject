library(shiny)

difference <- function(trueAge, innerAge) {
    abs(trueAge - innerAge)
}

midpoint <- function(trueAge, innerAge) {
    (trueAge + innerAge)/2
}

shinyServer(
    function(input,output) {
        output$differenceAge <- renderPrint({difference(input$trueAge, input$innerAge)})
        output$midpointAge <- renderPrint({midpoint(input$trueAge, input$innerAge)})
            output$ofeeling <- renderPrint({input$feeling})
    }
    )