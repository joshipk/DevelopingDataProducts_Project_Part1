library(shiny)
library(maps)
data("us.cities")
us.cities[,2] <- toupper(us.cities[,2])

# Define UI for application
shinyUI(fluidPage(
    # Header or Title Panel 
    titlePanel(title = h4("USA - States : Capital & Cities", align="center")),
    sidebarLayout(
        # Sidebar panel
        sidebarPanel(
            
            selectInput("State", "1. Select the State", choices = sort(unique(us.cities$country.etc)), hr())
         
                    ),
        
        # Main Panel
        mainPanel(
            tabsetPanel(type="tab", 
                        tabPanel("capital",verbatimTextOutput("capital")),
                        tabPanel("cities", tableOutput("cities")),
                        tabPanel("about", pre(includeText("include.txt")))
                        
                        )
            
                  )
        
          )
    )  
 ) 