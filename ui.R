library(shiny)

shinyUI(fluidPage(
    titlePanel("Simple Calculator"),
    sidebarLayout(
        sidebarPanel(
            helpText("This app is a basic arithmetic calculator."),            
            numericInput("num_1", label = h6("Enter your first number"), value = 100),
            numericInput("num_2", label = h6("Enter your second number"), value = 100),
            selectInput("select_operation", label = h6(""), choices = c("*", "/", "+", "-")),
        
            actionButton("action_Calc", label = "Refresh & Calculate")        
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel("Output",
                        h3("The result is:"),
                        textOutput("output")
                ),
                tabPanel("Documentation",
                         p(h4("Simple Calculator:")),
                         helpText("This application calculates basic arithmetic on any two numbers, i.e. division, multiplication, addition or subtraction."),
                                        
                )
            )
        )
    )
))