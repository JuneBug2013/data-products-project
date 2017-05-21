library(shiny) 
shinyUI (
  pageWithSidebar(
    # Application title
    headerPanel("Mortgage Payment Calculator"),
    
    sidebarPanel(
      numericInput('hp', 'Insert your house price ($)', 0) ,
      numericInput('dpp', 'Insert your down payment percentile (%)', 0),
      numericInput('air', 'Insert your annual interest rate (%)',0),
      numericInput('mt', 'Insert your Mortgage term (year)',0),
      submitButton('Submit')
    ), 
    mainPanel(
      p('Calculate your monthly mortgage payment using the calculator below. A house is the largest purchase most of us will ever make so it is important to calculate what your mortgage payment will be and how much you can afford. Estimate your monthly payments and see the effect of adding extra payments.'),
      h4('Taking into account the values entered by you:'), 
      p('hp:'), verbatimTextOutput("inputhpvalue"),
      p('dpp:'), verbatimTextOutput("inputdppvalue"),
      p('air:'), verbatimTextOutput("inputairvalue"),
      p('mt:'), verbatimTextOutput("inputmtvalue"),
      h4('Your estimated monthly payment is:'), verbatimTextOutput("mortgagevalue")
    )
  ) 
)

