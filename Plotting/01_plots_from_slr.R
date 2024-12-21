# load packages
library("GWalkR")
library("esquisse")
library("tidyverse")
library("readxl")
library("explore")
#load data
df_ghgs<-read_excel("Data/GHgs.xlsx")
# Explore data
gwalkr(df_ghgs)

esquisser(df_ghgs)

esquisser(viewer = "browser")

explore(df_ghgs)
