source("./fundtype.R")
source("./fundinfo.R")
source("./fundgraph.R")


shinyServer(function(input, output) {
  
  output$result_fundtype <- renderText({
    fundtype <- fundtype(input$return, input$risk, input$goal)
    
    paste("Based on your selection, your investment fund type is: <strong>", 
          fundtype, "</strong>",
          sep = "")
  })
  
  output$result_fundinfo <- renderText({
    fundtype <- fundtype(input$return, input$risk, input$goal)
    fundinfo <- fundinfo(fundtype)
    
    paste(fundinfo,sep = "")
  })
  
  output$result_fundgraph <- renderPlotly({
    fundtype <- fundtype(input$return, input$risk, input$goal)
    fundgraph <- fundgraph(fundtype)
    fundgraph$elementId <- NULL
    fundgraph
  })
  
})