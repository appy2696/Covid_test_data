library(shiny)

covid <- read.csv("covid-19-tests-country.CSV",header=TRUE, sep=",",colClasses = c('character','numeric','numeric','numeric'))
#install.packages("shiny")
function(input, output) { 
    
    # Fill in the spot we created for a plot 
    output$Tests <- renderPlot({ 
        
        # Render a barplot 
        plot(covid[,input$Country],  
                main=input$Country, 
                ylab="Number of covids tests per country", 
                xlab="Day",type="l", col="green", lwd=5) 
    })
}

