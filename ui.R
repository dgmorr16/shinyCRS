# -------------------------------------------------------------------------
# ui.R
# David Morrison
#
# Created: 2021-02-08
# Last revised: 2021-03-07
# Last revised by: Melissa Bedinger
# -------------------------------------------------------------------------

library(leaflet)
library(leaflet.providers)


# UI ----------------------------------------------------------------------

ui <- fluidPage(
  useShinyjs(),
  tagList(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom_united.css"),
      #tags$style("input-sm {font-family: Poppins; font-size:35px;}"),
      #tags$style("p {font-family: Poppins; font-size:16px; text-align:left;}"),
      tags$script(src = "js/index.js")
    )
  ),
  
  titlePanel(windowTitle = "",
             
             title = fluidRow(
               
               #column(width = 6, style = "margin-top: 60px;", ""),
               
               column(width = 12, align = "center",
                      
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
dashboardSidebar(
  div(id = "sidebar",
sidebarPanel(width = 2,
             
             prettyRadioButtons(
               inputId = "areaSelect",
               label = "Select area of interest:",
               choices = unique(usahJaipurData$area),
               icon = icon("check"),
               bigger = FALSE,
               animation = "smooth",
               status = "primary"
             ),
             
             hr(style = "border-top: 1px solid #D0D5DA;"), 
             
             selectInput(
               inputId = "hazardSelect",
               label = "Select hazard:",
               choices = c("No selection",
                           "Normal conditions",
                           "Flooding",
                           "Heat stress",
                           "Water quality",
                           "Water scarcity"),
               selected = "No selection",
               multiple = F),
             
             conditionalPanel(condition = "input.idThemeTabs == 'idUrbanSystem'",
                              
                              hr(style = "border-top: 1px solid #D0D5DA;"), 
                              
                              markdown("Select what level of the network you would like to be displayed."),
                              
                              prettyRadioButtons(
                                inputId = "levelSelect",
                                label = "Select network level:",
                                choices = c("Outcomes", "Tasks"),
                                #choiceValues = c("Outcomes", "Tasks"), 
                                icon = icon("check"),
                                bigger = FALSE,
                                animation = "smooth",
                                status = "primary"
                              )
                              
             ),
             
             downloadButton(
               outputId = "summaryDownload",
               label = "Download Summary"
             ),
            
))),#sidebarPanel
###############################################.
## MAIN PANEL ----
###############################################.
mainPanel(      
  tabsetPanel(selected = "idHome", id = "idThemeTabs",
    tabPanel("Home", value = "idHome",
             
             markdown("<br> This dashboard presents results from a questionnaire administered in 
                      five slums across Jaipur, India. Results show information about 
                      demographics, climate-related hazards, and climate impacts."),
             
             leafletOutput("jaipurMap"),
             
             markdown("You can select a tab to explore a theme:
                      
                      *	*Profile* shows information about respondents’ age, number of 
                      people, and severity of experience with climate-related hazards;
                      * *Education* shows information about how climate-related hazards 
                      have impacted school attendance;
                      * *Employment* shows information about common job types, formality 
                      of work, location of work, and how climate-related hazards have 
                      impacted ability to work;
                      * *Infrastructure* shows information about access to basic 
                      infrastructure like clean water provision, and how climate-related 
                      hazards have impacted infrastructure;
                      * *Urban system* shows information about how climate-related hazards 
                      have impacted the ability of slums to function (Tasks) and to be 
                      resilient in the future (Outcomes).
                      
                      You can change the area you want to view (for example, *All Slum Areas* or 
                      *Shanti Colony*). 
                      
                      You can select one or more climate-related hazards to look at how 
                      these have different impacts (for example, *Flood* has different 
                      impacts from *Water scarcity*).
                      
                      Some combinations of theme, area, and hazard are unavailable. This is 
                      to prevent showing results which could identify individual respondents. 
                      Instead of showing an exact plot, this information is included in a 
                      summary of results.
                      
                      You can download a summary of results by selecting the 
                      area you want to read about, and clicking the “Download Summary” button."
               
             )
             
             
             ),
              
    tabPanel("Profile", value = "idProfile",
             
             markdown("<br> This tab shows information about respondents’ age, number of people, 
                      and severity of experience with climate-related hazards."),
             
             hr(style = "border-top: 1px solid #D0D5DA;"),
             
             withSpinner(uiOutput(outputId = "profilePlot"))
             
             ),
    tabPanel("Education", value = "idEducation",
             
             markdown("<br> This tab shows information about how climate-related hazards have 
                      impacted school attendance."),
             
             hr(style = "border-top: 1px solid #D0D5DA;"),
             
             withSpinner(uiOutput(outputId = "educationPlot"))
             
             ),
    tabPanel("Employment", value = "idEmployment",
             
             markdown("<br> This tab shows information about common job types, formality of 
                      work, location of work, and how climate-related hazards have impacted 
                      ability to work."),
             
             hr(style = "border-top: 1px solid #D0D5DA;"),
             
             withSpinner(uiOutput(outputId = "employmentPlot"))
             
             ),
    tabPanel("Infrastructure", value = "idInfrastructure",
             
             markdown("<br> This tab shows information about access to basic infrastructure like clean 
                      water provision, and how climate-related hazards have impacted 
                      infrastructure."),
             
             hr(style = "border-top: 1px solid #D0D5DA;"),
             
             withSpinner(uiOutput(outputId = "infrastructurePlot"))
             
             ),
    tabPanel("Urban system", value = "idUrbanSystem",
             
             fluidRow(
               column(12,
                      column(5,
                             
                             markdown("<br> This tab shows information about how climate-related hazards have 
                      impacted the ability of slums to function (Tasks) and to be resilient 
                      in the future (Outcomes).
                      
                      **Tasks** are the activities needed for a city to function.
                      When tasks are more impacted than normal, they appear to the right. 
                      This means those activities have been prevented from being performed 
                      to their normal level.
                      
                      **Outcomes** are goals for making cities and communities resilient to change.
                      When outcomes are more strained than normal, they appear to the right. 
                      This means the current situation has put these prerequisites for 
                      future resilience at risk.
                      
                      See the table right for the top 3 impacted Outcomes/Tasks for 
                      each scenario.")
                      ),
                      column(7,
                             
                             br(),
                             
                             wellPanel(width = 8,
                                       
                                       DT::DTOutput("mostImpacted")
                             )
                      )
               )
             ),#fluidRow
       
             hr(style = "border-top: 1px solid #D0D5DA;"), 
             
             withSpinner(girafeOutput(outputId = "urbanSystemPlot", width = "auto", height = "auto"))
             
             ),
    
    tabPanel("About", value = "idAbout",
             
             markdown("<br> 
             
                      ### Project Information
                      
                      <br>
                      
                      **Project**: Climate-resilient slums: a systems approach for inclusive 
                      climate impact assessment.
                      
                      **Aim**: To improve the capacity of Jaipur slum residents to connect 
                      with local climate impacts, supporting more informed collaborative 
                      decisions around climate resilience.
                      
                      **Funding**: Royal Academy of Engineering (FODT392013).
                      
                      **Project collaborators**: Mahila Housing Trust 
                      (Ms Bansari Sharma/Mr Siraz Hirani/Ms Bijal Brahmbhatt), Heriot-Watt 
                      University (Dr Melissa Bedinger/Prof Lindsay Beevers/Dr Annie 
                      Visser-Quinn/Mr David Morrison), King’s College London (Dr Faith Taylor).
                      
                      **Project administered**: December 2019 - March 2021.
                      
                      **Questionnaires administered**: September 2020 - October 2020.
                      
                      **Ethics**: Ethics approval was gained from the Heriot-Watt University 
                      Ethics Committee and all participants gave informed consent.
                      
                      **Data availability**: Underlying data for this study cannot be shared 
                      open access due to its sensitive nature and compliance with GDPR; 
                      code can be found on GitHub.
                      
                      **Contact**: For all project related queries, contact Melissa Bedinger @
                      m.bedinger@hw.ac.uk and Bansari Sharma @ bansari@mahilashg.org and for
                      queries related to this site, contact David Morrison @ d.g.morrison@hw.ac.uk"),
                      
                      hr(style = "border-top: 1px solid #D0D5DA;"), 
                      
             markdown("<br> 
             
                      ### Urban Systems Method
                      
                      <br>
                      
                      The Urban system tab is generated from an Urban Systems Abstraction 
                      Hierarchy (USAH) analysis, a method developed at Heriot-Watt University.
                      
                      You can read about the USAH methodology on our [main dashboard.](https://waterresilientcities.shinyapps.io/iaa_usah/)
                      
                      You can see and explore what’s in the USAH [here.](https://waterresilientcities.shinyapps.io/AHexploreR/)
                      
                      #### Further reading:
                      1. Bedinger, M., Beevers, L., Walker, G. H., Visser-Quinn, A., & McClymont, K. (2020). Urban systems: Mapping interdependencies and outcomes to support systems thinking. Earth's Future, 8, e2019EF001389. https://doi.org/10.1029/2019EF001389 
                      2. McClymont, K., Bedinger, M., Beevers, L., Walker, G., Morrison, D (2021). Analyzing city-scale resilience using a novel systems approach. Understanding Disaster Risk, 179-201. https://doi.org/10.1016/B978-0-12-819047-0.00011-1"
                      )
             )
    )#tabsetPanel
  )#mainPanel
###############################################.
## END ----
###############################################.
)#fluidPage 
