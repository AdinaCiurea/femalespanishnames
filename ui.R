
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# read names and frequencies as a df
rawDocNames<- read.csv("Nombres_Coruna.csv", sep = "\t")

# convert it  into a list
namesCoruna<-as.list(rawDocNames$Total)
names(namesCoruna)<-rawDocNames$Nombre


# Define UI for application that draws a histogram
shinyUI(fluidPage(
       
        
        br(),
        fluidRow(
                column(6,
                       h4("Most frequent females name in A Coruña, Spain, in the 2017 census"),
                       p("On the dropdown list on the right is a list of the 3000 most common female names in 2017 in A Coruña, Spain. Pick one from the list to find out how many people are in the A Coruña 2017 census with that name.")
                ),
                fluidRow(
                        column(5,
                               hr(),
                               verbatimTextOutput('out1'),
                               
                               selectInput('in1', 'Options', c(Choose='', namesCoruna), selectize=
                                                   TRUE)
                        )
                )
        ))
)
