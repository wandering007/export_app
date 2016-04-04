library(shiny)
library(ggplot2)

Cate <- c("Philosopy Social Science", "Culture and Education",
          "Literature and Art", "Natural Science and S&T",
          "For Children", "General Books")
color <- c("#3366cc", "#dc3912", "#109618", "#990099", "#ff9900", "#0099c6")
names(color) <- Cate

Num <- read.csv("Export_Num.csv")

Num <- Num[order(Num$group),]
Num <- Num[order(as.Date(Num$date, format = "%Y")),]
Num$date <- gsub("-[0-9]*", "",Num$date)
Num$group <- replace(Num$group, Num$group == c(1, 2, 3, 4, 5, 6), Cate)

Val <- read.csv("Export_Value.csv")

Val <- Val[order(Val$group),]
Val <- Val[order(as.Date(Val$date, format = "%Y")),]
Val$date <- gsub("-[0-9]*", "",Val$date)
Val$group <- replace(Val$group, Val$group == c(1, 2, 3, 4, 5, 6), Cate)

shinyServer( function(input, output) {
  output$culDevPlot <- renderPlot({
    if( 0 == length(input$Category) ) # no categories are selected
      return(NULL)
    
    if(input$Type == "quantity")
    {
      data0 = Num[Num$group %in% input$Category,]
    }
    else
    {
      data0 = Val[Val$group %in% input$Category,]
    }

    if(input$Style == "Grouped")
      pos = "dodge"
    else pos = "stack"
    ggplot( data0, aes(x = date, y = value, fill = group) ) +
      labs(title = "A Generous Look At Culture Development As A Whole", x = "year", y = input$Type, fill = NULL) + 
      geom_bar(stat = "identity", position = pos) +
      scale_fill_manual(values = color)
  })
} )