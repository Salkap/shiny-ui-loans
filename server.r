library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
 
  
  output$distPlot <- renderPlot({
    pl = ggplot(d, aes_string(x = input$coln, bins = input$bins)) + geom_histogram()
    print(pl)

  })
  
}

