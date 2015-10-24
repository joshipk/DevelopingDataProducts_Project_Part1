library(shiny)
library(maps)
data("us.cities")
shinyServer(
    
    function(input, output) {
        names(us.cities)[1] <- paste("City")
        names(us.cities)[2] <- paste("State")
        names(us.cities)[3] <- paste("Population")
        
        output$capital <- renderPrint({
            us.cities[us.cities$State == input$State & us.cities$capital == 2,]$City
            
        })
        

        
        output$cities <- renderTable({
            us.cities[us.cities$State == input$State, -c(2,6) ]
          
            
        })
        
     
    }
)
