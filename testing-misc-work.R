library(shiny)

library(dplyr)

library(leaflet)

library(DT)
library(stringr)


old_data <- read.csv("blood-banks.csv", stringsAsFactors = FALSE )
bb_data<-old_data

bb_data <- data.frame(bb_data)
bb_data$Latitude <-  as.numeric(bb_data$Latitude)
bb_data$Longitude <-  as.numeric(bb_data$Longitude)
bb_data=filter(bb_data, Latitude != "NA") # removing NA values

# new column for the popup label

bb_data <- mutate(bb_data, cntnt=paste0('<strong>Name: </strong>',Blood.Bank.Name,
                                        '<br><strong>State:</strong> ', State,
                                        '<br><strong>Time:</strong> ', Service.Time,
                                        '<br><strong>Mobile:</strong> ',Mobile,
                                        '<br><strong>HelpLine:</strong> ',Helpline,
                                        '<br><strong>Contact1:</strong> ',Contact.No.1,
                                        '<br><strong>Contact2:</strong> ',Contact.No.2,
                                        '<br><strong>Contact3:</strong> ',Contact.No.3,
                                        '<br><strong>Contact4:</strong> ',Contact.No.4,
                                        '<br><strong>Contact5:</strong> ',Contact.No.5,
                                        '<br><strong>Contact6:</strong> ',Contact.No.6,
                                        '<br><strong>Contact7:</strong> ',Contact.No.7,
                                        '<br><strong>Email:</strong> ',Email,
                                        '<br><strong>Website:</strong> ',Website)) 


table(world_energy$Country)
viewing<-world_energy%>%
  filter(Country=="US")


x<-world_energy%>%
  filter(str_detect(Var, "res"))




#### REAL WORK HERE 

#read data, filter to just materials data
world_energy<-read.csv("world-energy.csv")

materials_data <- world_energy%>%
  filter(str_detect(Var, "cobalt")|str_detect(Var, "lith")|str_detect(Var, "graph")|str_detect(Var, "rare"))%>%
  filter(Year>=2022)
colnames(materials_data)[3] = "alpha3"

# read alpha 3 lat/long data to add to materials data & place on map
code_coords<-read.csv("code_coords.csv")
colnames(code_coords)[3] = "alpha3"
code_coords<-mutate(code_coords, alpha3=trimws(alpha3))
materials_data<-left_join(materials_data, code_coords, by = "alpha3")

colnames(materials_data)[16] = "Latitude"
colnames(materials_data)[17] = "Longitude"






####













