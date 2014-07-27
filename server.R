
library(shiny)
# load caret package for decision tree modeling
library(rpart)

if (!require("RColorBrewer")) {
  install.packages("RColorBrewer")
  library(RColorBrewer)
}

# load rattle package for decision tree display
library(rattle)
library(rpart.plot)
# load the mtcar dataset
data(mtcars)

shinyServer(
  function(input, output) {
    output$newDT <- renderPlot({
      predictor = input$predictor
      outcome = input$outcome
      
      output$selected_outcome <- renderPrint({input$outcome})
      output$selected_predictor <- renderPrint({input$predictor})
      
      # remove outcome from predictor
      predictor = predictor[predictor!=outcome]
      # construct formula based on selected predictors and outcome
      formula = paste(outcome ,'~ ')
      for(i in 1:length(predictor) ){
        formula = paste(formula, predictor[i])
        if( i < length(predictor)) formula = paste(formula, ' + ')        
      }
      expression = paste("modDT <- rpart(", formula, ', data = mtcars)')
      
      # fit decision tree model
      eval(parse(text=expression))
            
      # plot decision tree model
      fancyRpartPlot(modDT)            
      #rpart.plot(modDT)
      
    })
    
  }
)
