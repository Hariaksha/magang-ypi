# Load necessary packageslibrary(googlesheets4)
library(ggplot2)
library(readxl)
library(writexl)

# Set working directory
setwd("C:/Repositories/magang-ypi")

# Read all sheets
sheets = excel_sheets("YPI Data.xlsx")
data = read_excel("YPI Data.xlsx", sheet = "Indeks")
metrik = data[,5]