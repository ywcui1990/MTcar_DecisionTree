library(shiny)

data(mtcars)

shinyUI(fluidPage(
  titlePanel("Decision Tree Model with Moter Trend Dataset"),

    
  sidebarPanel(
    selectInput('outcome', 'Goal:', names(mtcars)),
    checkboxGroupInput("predictor", "Predictor:",
                       choices = c(
                         "mpg" = "mpg",
                         "cyl" = "cyl",
                         "disp" = "disp",
                         "hp" = "hp",
                         "drat" = "drat",
                         "wt" = "wt",
                         "qsec" = "qsec",
                         "vs" = "vs",
                         "am" = "am",
                         "gear" = "gear",
                         "carb" = "carb"
                         ),
                       selected = c("wt","hp"))
  ),
  
  mainPanel(
    h4('Selected goal: '),
    verbatimTextOutput("selected_outcome"),
    
    h4('Selected predictor: '),
    verbatimTextOutput("selected_predictor"),
    
    plotOutput('newDT')
  ),
  
  
  fluidRow(
    column(10, includeMarkdown("doc.md"))
  )  
))





