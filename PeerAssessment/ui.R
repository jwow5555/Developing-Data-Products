library(shiny)
library(plotly)
options(shiny.error=recover)
  
shinyUI(fluidPage(
  titlePanel("Choose Your Long-Term Investment Fund"),
  
  sidebarLayout(sidebarPanel(
    
    helpText("Tangering offers a choice of five distinct portfolio solutions
              for Canadians, depending on your needs, risk appetite and 
              investment goals. They are Balanced Income, Balanced, Balanced 
              Growth, Dividend and Equity Growth, respectively. With risk 
              ranging from low to medium to high and investing in different
              asset classes, they provide Canadians with regular income and/or
              capital appreciation. The following three quick questions help 
              you identify the fund that best suits you.
              
             "),
    
    radioButtons(
      inputId = "goal",
      label = "What is your goal of long-term investment",
      choices = c("Capital Appreciation" = 1, 
                  "Regular Income" = 2,
                  "Both" = 3),
      selected = 1
    ),
    
    sliderInput(
      inputId = "return",
      label = "What is your ideal annualized investment return (%)",
      min = 0,
      max = 20,
      value = 5
    ),
    
    sliderInput(
      inputId = "risk",
      label = "What is maximum loss you can sustain (%)",
      min = 0,
      max = 20,
      value = 5
    )
    ),

    
    mainPanel(
      uiOutput("result_fundtype"),
      uiOutput("result_fundinfo"),
      plotlyOutput("result_fundgraph")
    ))
))