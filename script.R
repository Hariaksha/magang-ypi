# Load necessary packageslibrary(googlesheets4)
library(ggplot2)
library(readxl)
library(writexl)

# Set working directory
setwd("C:/Repositories/magang-ypi")

# Read all sheets
sheets = excel_sheets("YPI Data.xlsx")
data = read_excel("YPI Data.xlsx", sheet = "Keberadaan Bank", range = "A1:E41")
results = quantile(data["Tidak ada bank"], probs = c(0,0.25,0.5,0.75,1))
metrik = data[,5]