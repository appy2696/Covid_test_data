#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
covid <- read.csv("covid-19-tests-country.CSV",header=TRUE, sep=",",colClasses = c('character','numeric','numeric','numeric'))
# Use a fluid Bootstrap layout 
fluidPage(     
    
    # Give the page a title 
    titlePanel("Covid Tests per country"), 
    
    # Generate a row with a sidebar 
    sidebarLayout(       
        
        
        # Define the sidebar with one input 
        sidebarPanel(p(strong("Documentation:",style="color:blue"), a("User Help Page",href="https://rpubs.com/apoorvsaxena96/663980")), 
                     selectInput("Country", "Country:",  
                                 choices=colnames(covid[-1])), 
                     hr(), 
                     helpText("Covid Tests") 
        ), 
        
        # Create a spot for the barplot 
        mainPanel( 
            plotOutput("Tests")   
        ) 
        
    ) 
) 
