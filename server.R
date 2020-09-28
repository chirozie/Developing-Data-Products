library(shiny)

shinyServer(function(input, output) {
    observe({input$action_Calc
        if (input$action_Calc == 0) "" 
        else output$output <- renderText({
            switch(input$select_operation,
                   "*" = input$num_1 * input$num_2,
                   "/" = input$num_1 / input$num_2,
                   "+" = input$num_1 + input$num_2,
                   "-" = input$num_1 - input$num_2)   
        })
    
    })
}
    )