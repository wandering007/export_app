library(shiny)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        "Type", "Export Condition",
        choices = c( "quantity", "value" ),
        selected = "quantity", inline = TRUE),
      radioButtons(
        "Style", "Plot Style",
        choices = c("Grouped", "Stacked"),
        selected = "Grouped", inline = TRUE),
      checkboxGroupInput("Category", "Category",
                         c("Culture and Education", "For Children", 
                           "General Books", "Literature and Art",
                           "Natural Science and S&T", "Philosopy Social Science"),
                         selected = c("Philosopy Social Science", "Culture and Education",
                                      "Literature and Art", "Natural Science and S&T",
                                      "For Children", "General Books")
      )
    ),
    
    mainPanel(
      plotOutput("culDevPlot")
    )
  )
))