library(shiny)
library(leaflet)

navbarPage("Location of Rare Earth Materials", id="main",
           tabPanel("Map",
                    fluidRow(
                             column(2,selectInput("categoryFilter", "Select a Material:",
                                         choices = unique(materials_data$Var), selected = unique(materials_data$Var)[1])
                             )
                           ),
                      fluidRow(
                             leafletOutput("matmap", height=1000)
                             )
                    ),
           tabPanel("Read Me",includeMarkdown("readme.md")))

