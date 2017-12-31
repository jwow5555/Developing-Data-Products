library(plotly)

fundgraph <- function(fundtype){
assetclass = c("Canadian Bonds", "Canadian Stocks", 
               "US Stocks", "International Stocks",
               "Canadian Dividend Equity",
               "US Dividend Equity",
               "International Dividend Equity"
               )
Balanced_Income = c(0.7, 0.1, 0.1, 0.1, 0, 0, 0)
Balanced = c(0.4, 0.2, 0.2, 0.2, 0, 0, 0)
Balanced_Growth = c(0.25, 0.25, 0.25, 0.25, 0, 0, 0)
Dividend = c(0, 0, 0, 0, 0.5, 0.25, 0.25)
Equity_Growth = c(0, 0.334, 0.33, 0.33, 0, 0, 0)
allocation = data.frame(assetclass, Balanced_Income, Balanced,
                        Balanced_Growth, Dividend, Equity_Growth)

if (fundtype == "Balanced Income") {
  data <- allocation[,c("assetclass", "Balanced_Income")]
  colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
  
  fundgraph <- plot_ly(data, labels = ~assetclass, values = ~Balanced_Income, type = 'pie',
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       #text = ~paste('$', X1960, ' billions'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = FALSE) %>%
    layout(title = 'Asset Allocation',
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
}

else if (fundtype == "Balanced") {
  data <- allocation[,c("assetclass", "Balanced")]
  colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
  
  fundgraph <- plot_ly(data, labels = ~assetclass, values = ~Balanced, type = 'pie',
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       #text = ~paste('$', X1960, ' billions'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = FALSE) %>%
    layout(title = 'Asset Allocation',
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
}

else if (fundtype == "Balanced Growth") {
  data <- allocation[,c("assetclass", "Balanced_Growth")]
  colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
  
  fundgraph <- plot_ly(data, labels = ~assetclass, values = ~Balanced_Growth, type = 'pie',
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       #text = ~paste('$', X1960, ' billions'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = FALSE) %>%
    layout(title = 'Asset Allocation',
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
}

else if (fundtype == "Dividend") {
  data <- allocation[,c("assetclass", "Dividend")]
  colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
  
  fundgraph <- plot_ly(data, labels = ~assetclass, values = ~Dividend, type = 'pie',
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       #text = ~paste('$', X1960, ' billions'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = FALSE) %>%
    layout(title = 'Asset Allocation',
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
}

else{
  data <- allocation[,c("assetclass", "Equity_Growth")]
  colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')
  
  fundgraph <- plot_ly(data, labels = ~assetclass, values = ~Equity_Growth, type = 'pie',
                       textposition = 'inside',
                       textinfo = 'label+percent',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       #text = ~paste('$', X1960, ' billions'),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = FALSE) %>%
    layout(title = 'Asset Allocation',
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
}

return(fundgraph)
}