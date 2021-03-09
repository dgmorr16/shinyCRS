# -------------------------------------------------------------------------
# ui.R
# David Morrison
#
# Created: 2021-02-08
# Last revised: 2021-02-08
# -------------------------------------------------------------------------

# BLANK SPACE


# UI ----------------------------------------------------------------------

ui <- fluidPage(
  tagList(
    useShinyjs(),
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom_united.css"),
      #tags$style("input-sm {font-family: Poppins; font-size:35px;}"),
      #tags$style("p {font-family: Poppins; font-size:16px; text-align:left;}"),
      tags$script(src = "js/index.js")
    )
  ),
  
  titlePanel(windowTitle = "Climate Resilient Slums",
             
             title = fluidRow(
               
               column(width = 6, style = "margin-top: 60px;", "Climate Resilient Slums"),
               
               column(width = 6, align = "right",
                      
                      img(src="heriot-watt-logo.png", height = 60), 
                      img(src="KCL.png", height = 60),
                      img(src="MHT.png", height = 60),
                      img(src="RAE.png", height = 60)
                      
                      
                      
               )
             )#fluidRow
  ),#titlePanel
###############################################.
## SIDEBAR PANEL ----
###############################################.
sidebarPanel(

  prettyRadioButtons(
    inputId = "areaSelect",
    label = "Select area of interest:",
    choices = unique(key$area),
    # choices = c("All Slum Areas" = "allSlums",
    #             "Ashraf Colony" = "Ashraf",
    #             "Golden Colony" = "Golden",
    #             "New Indra Vihar" = "New",
    #             "Peer Daulat Shah" = "Peer",
    #             "Shanti Colony" = "Shanti"),
    icon = icon("check"),
    bigger = FALSE,
    animation = "smooth",
    status = "primary"
  ),

  pickerInput(
    inputId = "themeSelect",
    label = "Select theme of interest:",
    choices = "",
    # choices = c("Profile",
    #             "Education",
    #             "Employment",
    #             "Infrastructure",
    #             "Urban system"),
    selected = "",
    multiple = F),

  pickerInput(
    inputId = "hazardSelect",
    label = "Select hazard of interest:",
    #choices = "",
    choices = c("Overall",
                "Flooding" = "Flood",
                "Heat stress" = "Heatstress",
                "Water quality" = "Waterquality",
                "Water scarcity" = "Waterscarcity"),
    selected = "",
    multiple = F)

),#sidebarPanel
###############################################.
## MAIN PANEL ----
###############################################.
mainPanel(
  tabsetPanel(
    tabPanel("All Slum Areas"),
    tabPanel("Ashraf Colony"),
    tabPanel("Golden Colony"),
    tabPanel("New Indra Vihar"),
    tabPanel("Peer Daulat Shah"),
    tabPanel("Shanti Colony")
    )#tabsetPanel
  )#mainPanel
          
          #withSpinner(girafeOutput(outputId = "myPlot", width = "auto", height = "auto")),
          
          #withSpinner(uiOutput(outputId = "image"))

           #)#mainPanel
###############################################.
## END ----
###############################################.
)#fluidPage 
