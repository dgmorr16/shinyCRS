# -------------------------------------------------------------------------
# resultsTab.R
# David Morrison
#
# Created: 2021-02-08
# Last revised: 2021-03-08
# Last revised by: Melissa Bedinger
# -------------------------------------------------------------------------

library(leaflet)


###############################################.
## REACTIVE LOGIC ----
###############################################.
## UPDATE PICKER INPUTS
observe({ 
  
  # Urban System tab
  if (input$idThemeTabs == "idUrbanSystem") {
    
    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )
    
  }
  
  ## Profile tab
  if (input$idThemeTabs == "idProfile" & input$areaSelect == "All Slum Areas") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idProfile" & input$areaSelect == "Ashraf Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idProfile" & input$areaSelect == "Golden Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idProfile" & input$areaSelect == "New Indra Vihar") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idProfile" & input$areaSelect == "Peer Daulat Shah") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idProfile" & input$areaSelect == "Shanti Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }
  
  ## Education tab
  if (input$idThemeTabs == "idEducation" & input$areaSelect == "All Slum Areas") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEducation" & input$areaSelect == "Ashraf Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEducation" & input$areaSelect == "Golden Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEducation" & input$areaSelect == "New Indra Vihar") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEducation" & input$areaSelect == "Peer Daulat Shah") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEducation" & input$areaSelect == "Shanti Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Flooding",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }
  
  ## Employment tab
  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "All Slum Areas") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions",
                                  "Flooding",
                                  "Heat stress",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "Ashraf Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "Golden Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "New Indra Vihar") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "Peer Daulat Shah") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions"),
                      selected = "No selection"
    )

  }

  if (input$idThemeTabs == "idEmployment" & input$areaSelect == "Shanti Colony") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions"),
                      selected = "No selection"
    )

  }

  ## Infrastructure tab
  if (input$idThemeTabs == "idInfrastructure" & input$areaSelect == "All Slum Areas") {

    updateSelectInput(session, "hazardSelect",
                      choices = c("No selection",
                                  "Normal conditions",
                                  "Flooding",
                                  "Water quality",
                                  "Water scarcity"),
                      selected = "No selection"
    )

  }

})

## UPDATE RADIO BUTTONS
observe({ 

  if (input$idThemeTabs == "idInfrastructure" ) {

    updatePrettyRadioButtons(session, "areaSelect",
                             choices = c("All Slum Areas")
                             #choiceValues = c("All Slum Areas")
    )

  } else {

    updatePrettyRadioButtons(session, "areaSelect",
                             choices = c("All Slum Areas",
                                         "Ashraf Colony",
                                         "Golden Colony",
                                         "New Indra Vihar",
                                         "Peer Daulat Shah",
                                         "Shanti Colony")
                             # choiceValues = c("All Slum Areas",
                             #                  "Ashraf Colony",
                             #                  "Golden Colony",
                             #                  "New Indra Vihar",
                             #                  "Peer Daulat Shah",
                             #                  "Shanti Colony")
                             
    )

  }


})

## HIDE SIDEBAR @ HOME TAB
 # observe({
 #  if (input$idThemeTabs == "idHome" | input$idThemeTabs == "idAbout") {
 #    hideElement(selector = "#sidebar")
 #    removeCssClass("main", "col-sm-8")
 #    addCssClass("main", "col-sm-12")
 #  } else {
 #    showElement(selector = "#sidebar")
 #    removeCssClass("main", "col-sm-12")
 #    addCssClass("main", "col-sm-8")
 #  }
 # 
 # })


###############################################.
## REACTIVE DATA ----
###############################################.

plotData <- reactive({

  dt <- usahJaipurData %>%
    filter(
      levelName == input$levelSelect,
      resultLabel == "Percent change",
      hazard == input$hazardSelect,
      area == input$areaSelect
    )

})

toListen <- reactive({
  list(input$areaSelect,input$hazardSelect)
})

## Summary data for text output below
summaryData <- reactive ({
  
  plotData() %>%
    slice_max(round(Result, digits = 1), n = 3, with_ties = FALSE) %>%
    select(Node, Result, Definition) %>%
    rename('Outcome/Task' = Node, 'Percent change' = Result)
    
  
})

###############################################.
## PLOTS FUNCTIONS  ----
###############################################.
## Theme function...
pitTheme <- 
  function() {
    
    theme_minimal(base_size = 12, base_family = "Poppins") +
      theme(text = element_text(colour = myGreys[[5]], size = 16),
            axis.text = element_text(colour = myGreys[[8]]),
            axis.text.y = element_text(colour = myGreys[[8]], size = 10),
            #axis.text.x = element_blank(),
            #axis.title.y = element_blank(),
            axis.ticks.x = element_blank(),
            #axis.title.x = element_blank(),
            panel.grid = element_line(colour = myGreys[[8]], linetype = "dotted", size = 0.4),
            panel.background = element_rect(fill = "white", colour = "transparent", size = 2),
            panel.grid.minor = element_blank(),
            #panel.grid.major = element_blank(),
            panel.grid.major.x = element_blank(),
            panel.grid.major.y = element_line(colour = "#aeb6bf"),
            panel.spacing = unit(0.5, "cm"),
            strip.text = element_text(face = "bold", colour = myGreys[[5]]),
            strip.background = element_blank(),
            legend.position = "none",
            title = element_text(colour = myGreys[[5]]),
            legend.title = element_text(colour = myGreys[[5]]),
            legend.text = element_text(margin = margin(r = 10, unit = "pt")),
            legend.text.align = 0)
    
  }

# Function for generating POt plot:
myDotplot <- function(myData, myPlotTitle) {
  ggplot(data = myData, aes(x = Result, 
                            y = fct_reorder(Node, baseline_result_bc, .desc = F),
                            colour = Result)) +
    
    geom_vline(xintercept = 0, linetype="dashed", 
               color = "#B4BDC5", size=0.5) +
    
    geom_point_interactive(aes(x = Result, 
                               y = fct_reorder(Node, baseline_result_bc, .desc = F),
                               colour = Result,
                               tooltip = paste0("Area: ", area, "\n",
                                                "Scenario: ", hazard, "\n",
                                                "Node: ", Node, "\n",
                                                "Definition: ", Definition, "\n",
                                                "Result: ", round(Result, digits = 1))
                               
                               ),
                           size = 10) +
    
    labs(title = myPlotTitle)
  
} 


###############################################.
## MAIN PLOTS  ----
###############################################.
observe({ 
  
  ## PROFILE TAB
  if (input$idThemeTabs == "idProfile") {
    
    if (input$hazardSelect == "No selection") {
      
      output$profilePlot <- renderUI({
        
        markdown("**No selection** has been made. Please go back to **Select hazard** to view results.")
        
      })

      }
    
    ## ALL SLUMS + No hazard
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Normal conditions") {
      
      output$profilePlot <- renderUI({ 
        
        fluidRow(
          column(12,
                 column(6, img(src = 'age_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'people_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'population_all_byArea.png', height = '75%', width = '100%')), 
                 column(6, img(src = 'respondents_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + HEAT STRESS
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'heatStress_experience_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_health_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_experience_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_days_all_byArea.png', height = '75%', width = '100%')),
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + WATER SCARCITY
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_experience_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_days_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_experience_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ASHRAF + HEAT STRESS
    if (input$areaSelect == "Ashraf Colony" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'heatStress_experience_Ashraf.png', height = '75%', width = '100%')),
          )
        )
        
      })
      
    }
    
    ## ASHRAF + WATER SCARCITY 
    if (input$areaSelect == "Ashraf Colony" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_experience_Ashraf.png', height = '75%', width = '100%')), 
                 column(6, img(src = 'waterScarcity_seasonality_Ashraf.png', height = '75%', width = '100%'))
          )
          
        )
        
      })
      
    }
    
    ## GOLDEN + HEAT STRESS
    if (input$areaSelect == "Golden Colony" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'heatStress_experience_Golden.png', height = '75%', width = '100%'))
          )
          
        )
        
      })
      
    }
    
    ## GOLDEN + WATER SCARCITY
    if (input$areaSelect == "Golden Colony" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_experience_Golden.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_Golden.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## NEW + HEAT STRESS
    if (input$areaSelect == "New Indra Vihar" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'heatStress_experience_New.png', height = '75%', width = '100%')),
          )
          
        )
        
      })
      
    }
    
    ## NEW + WATER SCARCITY
    if (input$areaSelect == "New Indra Vihar" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_experience_New.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_New.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## PEER + HEAT STRESS
    if (input$areaSelect == "Peer Daulat Shah" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'heatStress_experience_Peer.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## PEER + WATER SCARCITY
    if (input$areaSelect == "Peer Daulat Shah" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_experience_Peer.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_Peer.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## SHANTI + HEAT STRESS
    if (input$areaSelect == "Shanti Colony" & input$hazardSelect == "Heat stress") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'heatStress_experience_Shanti.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## SHANTI + WATER SCARCITY
    if (input$areaSelect == "Shanti Colony" & input$hazardSelect == "Water scarcity") {
      
      output$profilePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_experience_Shanti.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_seasonality_Shanti.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
  }
  
  ## EDUCATION TAB
  if (input$idThemeTabs == "idEducation") {
    
    if (input$hazardSelect == "No selection") {
      
      output$educationPlot <- renderUI({
        
        markdown("**No selection** has been made. Please go back to **Select hazard** to view results.")
        
      })
      
    }
    
    ## ALL SLUMS + FLOODING
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI({ 
        
        fluidRow(
          column(12,
                 column(6, img(src = 'flood_missedSchool_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'flood_missedSchool_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'flood_missedSchool_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'flood_missedSchool_days_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + HEAT STRESS
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Heat stress") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'heatStress_missedSchool_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_missedSchool_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_missedSchool_days_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + WATER SCARCITY 
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_missedSchool_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_missedSchool_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_missedSchool_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_missedSchool_days_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ASHRAF + FLOODING
    if (input$areaSelect == "Ashraf Colony" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_missedSchool_Ashraf.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ASHRAF + WATER SCARCITY
    if (input$areaSelect == "Ashraf Colony" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'waterScarcity_missedSchool_Ashraf.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## GOLDEN + FLOODING
    if (input$areaSelect == "Golden Colony" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_missedSchool_Golden.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## GOLDEN + WATER SCARCITY
    if (input$areaSelect == "Golden Colony" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'waterScarcity_missedSchool_Golden.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## NEW + FLOODING
    if (input$areaSelect == "New Indra Vihar" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_missedSchool_New.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## NEW + WATER SCARCITY
    if (input$areaSelect == "New Indra Vihar" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'waterScarcity_missedSchool_New.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## PEER + FLOODING
    if (input$areaSelect == "Peer Daulat Shah" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_missedSchool_Peer.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## PEER + WATER SCARCITY
    if (input$areaSelect == "Peer Daulat Shah" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'waterScarcity_missedSchool_Peer.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## SHANTI COLONY + FLOODING
    if (input$areaSelect == "Shanti Colony" & input$hazardSelect == "Flooding") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_missedSchool_Shanti.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## SHANTI COLONY + WATER SCARCITY
    if (input$areaSelect == "Shanti Colony" & input$hazardSelect == "Water scarcity") {
      
      output$educationPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'waterScarcity_missedSchool_Shanti.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
  }
  
  ## EMPLOYMENT TAB
  if (input$idThemeTabs == "idEmployment") {
    
    if (input$hazardSelect == "No selection") {
      
      output$employmentPlot <- renderUI({
        
        markdown("**No selection** has been made. Please go back to **Select hazard** to view results.")
        
      })
      
    }
    
    ## ALL SLUMS + NO HAZARD
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI({ 
        
        fluidRow(
          column(12,
                 column(6, img(src = 'workLocation_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'formality_all.png', height = '100%', width = '100%')),
                 column(6, img(src = 'job_q_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'formality_all_byArea.png', height = '75%', width = '100%')),
                 column(6, img(src = 'formality_all_byJobQ.png', height = '100%', width = '100%')),
                 
          )
        )  
        
      })
      
    }
    
    ## ALL SLUMS + HEAT STRESS
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Heat stress") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'heatStress_lostWork_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'heatStress_lostWork_days_all.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + WATER SCARCITY  
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Water scarcity") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_lostWork_all.png', height = '75%', width = '100%') ),
                 column(6, img(src = 'waterScarcity_lostWork_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_lostWork_days_all_byArea.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }
    
    ## ALL SLUMS + FLOODING
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Flooding") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'flood_lostWork_all.png', height = '75%', width = '100%') ),
                 column(6, img(src = 'flood_lostWork_days_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'flood_lostWork_days_all_byArea.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }
    
    ## Ashraf Colony + No hazard
    if (input$areaSelect == "Ashraf Colony" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'formality_Ashraf.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_Ashraf.png', height = '75%', width = '100%')),
                 column(6, img(src = 'job_q_Ashraf.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }
    
    ## Golden Colony + No hazard
    if (input$areaSelect == "Golden Colony" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'formality_Golden.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_Golden.png', height = '75%', width = '100%')),
                 column(6, img(src = 'job_q_Golden.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }  
    
    ## New Indra Vihar + No hazard
    if (input$areaSelect == "New Indra Vihar" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'formality_New.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_New.png', height = '75%', width = '100%')),
                 column(6, img(src = 'job_q_New.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }  
    
    ## Peer Daulat Shah + No hazard
    if (input$areaSelect == "Peer Daulat Shah" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'formality_Peer.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_Peer.png', height = '75%', width = '100%')),
                 column(6, img(src = 'job_q_Peer.png', height = '75%', width = '100%'))
          )
        )
      })
      
    }  
    
    ## Shanti Colony + No hazard
    if (input$areaSelect == "Shanti Colony" & input$hazardSelect == "Normal conditions") {
      
      output$employmentPlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'formality_Shanti.png', height = '75%', width = '100%')),
                 column(6, img(src = 'workLocation_Shanti.png', height = '75%', width = '100%')),
                 column(6, img(src = 'job_q_Shanti.png', height = '75%', width = '100%'))               

          )
        )
      })
      
    }  
    
  }
  
  ## INFRASTRUCTURE TAB
  if (input$idThemeTabs == "idInfrastructure") {
    
    if (input$hazardSelect == "No selection") {
      
      output$infrastructurePlot <- renderUI({
        
        markdown("**No selection** has been made. Please go back to **Select hazard** to view results.")
        
      })
      
    }
    
    ## ALL SLUMS + NORMAL CONDITIONS
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Normal conditions") {
      
      output$infrastructurePlot <- renderUI({ 
        
        fluidRow(
          column(12,
                 column(6, img(src = 'domesticSource_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'drinkingSource_all.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + WATER QUALITY 
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Water quality") {
      
      output$infrastructurePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterQuality_rating_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterQuality_rating_all_byArea.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + WATER SCARCITY 
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Water scarcity") {
      
      output$infrastructurePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(6, img(src = 'waterScarcity_use_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_purchases_all.png', height = '75%', width = '100%')),
                 column(6, img(src = 'waterScarcity_measuresI_all.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
    ## ALL SLUMS + FLOODING
    if (input$areaSelect == "All Slum Areas" & input$hazardSelect == "Flooding") {
      
      output$infrastructurePlot <- renderUI ({
        
        fluidRow(
          column(12,
                 column(8, img(src = 'flood_property_all.png', height = '75%', width = '100%'))
          )
        )
        
      })
      
    }
    
  }
  
  ## URBAN SYSTEM TAB
  if (input$idThemeTabs == "idUrbanSystem") {
    
    if (input$hazardSelect == "No selection") {
      return(NULL)
    }
    
    output$urbanSystemPlot <- renderGirafe({
      
      myUpperLimit <- abs(plotData()$Result) %>% max %>% ceiling
      myLowerLimit <- abs(plotData()$Result) %>% min %>% ceiling
      
      p <- myDotplot(myData = plotData(), myPlotTitle = paste0("Impacted ", input$levelSelect, "\n",
                                                               "Scenario: ", input$hazardSelect)) +
        scale_x_continuous(limits = c(-0.5, myUpperLimit)) +
        scale_y_discrete(labels = abbreviate) +
        xlab("Percent change from baseline conditions") +
        ylab("Node abbreviation") +
        #scale_y_discrete(labels = function(x) str_wrap(x, width = 15)) +
        pitTheme()
      
      girafe(ggobj = p, options = list(opts_tooltip(use_fill = TRUE, delay_mouseover = 500),
                                       opts_sizing(rescale = TRUE)),
             width_svg = 7.5, height_svg = 15)
      
    })
  }
  
})

###############################################.
## DATA TABLE  ----
###############################################.
## Reactive DT for the most impacted nodes
rowCallback <- c(
  "function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {",
  "var full_text = aData[4]",
  "$('td:eq(0)', nRow).attr('title', full_text);",
  "$('td:eq(1)', nRow).attr('title', full_text);",
  "$('td:eq(2)', nRow).attr('title', full_text);",
  "$('td:eq(3)', nRow).attr('title', full_text);",
  "}"
)

### Render DT
observeEvent(toListen(), {
  
output$mostImpacted <- DT::renderDT({
  
  DT::datatable(summaryData(), options = list(searching = FALSE,
                                              paging = FALSE,
                                              dom = 't',
                                              rowCallback = JS(rowCallback),
                                              autoWidth = TRUE,
                                              columnDefs = list(list(className = 'dt-left', targets = "_all"))
                                              ),
                ) %>%
    formatRound(c(2), 2)

})

})

###############################################.
## REPORT DOWNLOAD  ----
###############################################.
output$summaryDownload <- downloadHandler(
  
    filename = function() {
      
      if (input$areaSelect == "All Slum Areas") {return("Summary_AllSlumAreas.pdf")}
      
      if (input$areaSelect == "Ashraf Colony") {return("Summary_AshrafColony.pdf")}
      
      if (input$areaSelect == "Golden Colony") {return("Summary_GoldenColony.pdf")}
      
      if (input$areaSelect == "New Indra Vihar") {return("Summary_NewIndraVihar.pdf")}
      
      if (input$areaSelect == "Peer Daulat Shah") {return("Summary_PeerDaulatShah.pdf")}
      
      if (input$areaSelect == "Shanti Colony") {return("Summary_ShantiColony.pdf")}
      
      },
    
    content = function(file) {
      
      if (input$areaSelect == "All Slum Areas") {
        file.copy("data/summaryReports/AshrafColony_ResultsSummary.pdf", file) # Update
      }
      if (input$areaSelect == "Ashraf Colony") {
        file.copy("data/summaryReports/AshrafColony_ResultsSummary.pdf", file)
      }
      if (input$areaSelect == "Golden Colony") {
        file.copy("data/summaryReports/GoldenColony_ResultsSummary.pdf", file)
      }
      if (input$areaSelect == "New Indra Vihar") {
        file.copy("data/summaryReports/NewIndraVihar_ResultsSummary.pdf", file)
      }
      if (input$areaSelect == "Peer Daulat Shah") {
        file.copy("data/summaryReports/PeerDaulatShah_ResultsSummary.pdf", file)
      }
      if (input$areaSelect == "Shanti Colony") {
        file.copy("data/summaryReports/ShantiColony_ResultsSummary.pdf", file)
      }
      
    }
)

###############################################.
## LEAFLET MAP  ----
###############################################.
output$jaipurMap <- renderLeaflet ({
  
  leaflet() %>%
    addTiles(urlTemplate = "", 
             attribution = 'David Morrison, Climate Resilient Slums project. Contact: d.g.morrison@hw.ac.uk') %>%
    
    addProviderTiles(provider = providers$OpenStreetMap, leafletOptions(attributionControl = FALSE)) %>%
    
    setView(lng = 75.89, lat = 26.96, zoom = 14) %>%
    
    addPolygons(data = jaipurBoundary,
                weight = 1,
                color = "#34495E",
                stroke = TRUE,
                group = "City Boundary",
                label = "Jaipur City",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
     ) %>%
    
    addPolygons(data = ashrafBoundary, 
                weight = 1, 
                color = "#34495E", 
                stroke = TRUE, 
                group = "Slum Boundaries",
                label = "Ashraf Colony",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
    ) %>%
    
    addPolygons(data = goldenBoundary, 
                weight = 1, 
                color = "#34495E", 
                stroke = TRUE, 
                group = "Slum Boundaries",
                label = "Golden Colony",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
    ) %>%
    
    addPolygons(data = newIndraBoundary, 
                weight = 1, 
                color = "#34495E", 
                stroke = TRUE, 
                group = "Slum Boundaries",
                label = "New Indra Vihar",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
    ) %>%
    
    addPolygons(data = peerBoundary, 
                weight = 1, 
                color = "#34495E", 
                stroke = TRUE, 
                group = "Slum Boundaries",
                label = "Peer Daulat Shah",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
    ) %>%
    
    addPolygons(data = shantiBoundary, 
                weight = 1, 
                color = "#34495E", 
                stroke = TRUE, 
                group = "Slum Boundaries",
                label = "Shanti Colony",
                highlight = highlightOptions(
                  weight = 5,
                  color = "#666",
                  fillOpacity = 0.9,
                  bringToFront = TRUE),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
    )
  
})

