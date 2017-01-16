library(shiny)
library(ggplot2)

# Define UI for application that draws a histogram
fluidPage(
  
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 3,
                  value = 6),
      hr(),
      p("Some text"),
      tags$a(href = "HTTPS://www.sdcsdc.gw", "enter me"),
      
      selectInput("coln",
                  label = "Choose column:",
                  choices = names(d))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)
