library(shiny) 

Mortgage <- function(hp,dpp,air,mt) {
  air <- air/12 
  mt <- mt*12
  dpp <- dpp/100
  (hp-hp*dpp)*(air*0.01*(1+air*0.01)^mt)/((1+air*0.01)^mt-1)
  }
shinyServer(
  function(input, output) {
    
    output$inputhpvalue <- renderPrint({input$hp})
    output$inputdppvalue <- renderPrint({input$dpp})
    output$inputairvalue <- renderPrint({input$air})
    output$inputmtvalue <- renderPrint({input$mt})
    output$mortgagevalue <- renderPrint({Mortgage(input$hp,input$dpp,input$air,input$mt)})
  } 
)
