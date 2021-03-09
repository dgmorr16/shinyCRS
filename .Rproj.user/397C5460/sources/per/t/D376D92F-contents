# -------------------------------------------------------------------------
# global.R
# David Morrison
#
# Created: 2021-02-08
# Last revised: 2021-02-08
# -------------------------------------------------------------------------

rm(list = ls())


# PACKAGES ----------------------------------------------------------------

library(shiny)
library(tidyverse)
library(shinythemes)
library(shinydashboard)
library(shinycssloaders)
library(shinyBS)
library(shinyjs)
library(shinyWidgets)
library(shinyMatrix)
library(shinyalert)
library(png)
library(showtext)
library(ggiraph)
library(colR)
library(pbapply)
library(leaflet)
library(sf)
library(DT)


# COLOUR PALETTES ---------------------------------------------------------

myGreys <- c("#1b2631", "#212f3c", "#283747",
             "#2e4053", "#34495e", "#5d6d7e",
             "#85929e", "#aeb6bf", "#d6dbdf", "#ebedef") %>%
  colRpalBezier(10) %>% 
  colRpalL
    
# DATA --------------------------------------------------------------------
## Non-disclosive static plots...
files <- list.files("data/nondisclosivePlots_png", pattern = ".png", full.names = TRUE)
files

# Definitions data...
definitions <- read.csv("data/definitions_20210223.csv") %>%
  rename(Node = vName, Definition = def_simple) %>%
  select(Node, Definition)

## Point-in-time data...
usahJaipurData <- readRDS("data/pointInTime/Jaipur_plottingData_20210223-162752.RDS") %>%
  left_join(definitions, by = "Node")

## Jaipur map data...
jaipurBoundary <- readRDS("data/jaipurBoundary.RDS")
ashrafBoundary <- readRDS("data/ashrafBoundary.RDS") %>% select(-Description)
goldenBoundary <- readRDS("data/goldenBoundary.RDS") %>% select(-Description)
newIndraBoundary <- readRDS("data/newIndraBoundary.RDS") %>% select(-Description)
peerBoundary <- readRDS("data/peerBoundary.RDS") %>% select(-Description)
shantiBoundary <- readRDS("data/shantiBoundary.RDS") %>% select(-Description)




