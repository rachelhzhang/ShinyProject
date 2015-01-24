library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("You are only as old as you feel!"),
    sidebarPanel(
        numericInput('trueAge', "What is your age?", 30, min = 1, max = 112, step = 1),
        numericInput('innerAge', "How old do you feel?", 25, min = 0, max = 112, step = 1),
        checkboxGroupInput("feeling", "Check this box if you feel old",
                           c("Yes" = "Do you feel wise, too?"))
        ),
    mainPanel(
        h4("The difference between your real and mental ages is:"),
        verbatimTextOutput("differenceAge"),
        h4("The midpoint between your real and mental age is:"),
        verbatimTextOutput("midpointAge"),
        verbatimTextOutput("ofeeling")
        )
    ))