library(shiny)
library(quantmod)
shinyUI(fluidPage(
  titlePanel("stock display"),
  sidebarLayout(
  sidebarPanel(
    p(strong("select a stock to examine.Information will be collected from yahoo finance.")),
    textInput("symb", "Symbol","MSFT"),
    dateRangeInput(inputId = "dates",  
                   label =  "Date range",
                   start = "2013-01-01",
                   end = "2016-01-02"
    ),
    submitButton("Get Stock"),
    checkboxInput("log", label = "Plot y axis on log scale", value = TRUE)
  ),
  mainPanel(
    h4("plot"),
    plotOutput("plot")
)
)))
