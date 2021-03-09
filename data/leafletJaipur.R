# -------------------------------------------------------------------------
# leafletJaipur.R
# David Morrison
#
# Created: 2021-02-22
# Last revised: 2021-02-22
# -------------------------------------------------------------------------
rm(list = ls()); cat("\014")

pacman::p_load(tidyverse, sf, ggthemes, leaflet, RColorBrewer, htmlTools)

setwd(dirname(rstudioapi::getSourceEditorContext()$path)); getwd()


# 1. LOAD DATA -------------------------------------------------------------
## Shapefiles
shpfiles <- list.files("map", 
                    pattern = ".shp", 
                    full.names = TRUE)
shpfiles

st_read(shpfiles[[2]]) %>% ggplot() + geom_sf()

dt <- 
  st_read(shpfiles[[5]]) %>% 
  st_transform(4326)
dt

dt %>% saveRDS("shantiBoundary.RDS")

## KML
kmlfiles <- list.files("map", 
                    pattern = ".kml", 
                    full.names = TRUE)
kmlfiles

st_read(kmlfiles[[1]]) %>% ggplot() + geom_sf()

dv <- 
  st_read(kmlfiles[[5]]) %>% 
  st_zm(drop = TRUE) %>%
  st_transform(4326)
dv

dv %>% saveRDS("shantiBoundary.RDS")

# 2. ----------------------------------------------------------------------

mapJaipur <- 
  dt %>% 
  st_simplify(dTolerance = 0.001) %>%
  ggplot() + 
  geom_sf(fill = "#D6DBDF", colour = "transparent") +
  theme_map()
mapJaipur


# 3. ----------------------------------------------------------------------

leafletJaipur <- 
  leaflet() %>%
  addTiles(urlTemplate = "", 
           attribution = 'David Morrison, Climate Resilient Slums project. Contact: d.g.morrison@hw.ac.uk') %>%
  
  addProviderTiles(provider = providers$OpenStreetMap, leafletOptions(attributionControl = FALSE)) %>%
  
  addPolygons(data = dt, 
              weight = 1, 
              color = "#34495E", 
              stroke = TRUE, 
              group = "City of Edinburgh",
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
leafletJaipur


# 4.  ---------------------------------------------------------------------

leafletJaipur %>% saveRDS("shinyApp/data/mapJaipur.RDS")

  
