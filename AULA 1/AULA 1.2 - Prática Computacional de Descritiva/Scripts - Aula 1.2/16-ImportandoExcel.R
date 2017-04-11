############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Trabalhando com arquivos excel

install.packages("xlsx")
install.packages("readxl")
library(xlsx)
library(readxl)

# Lista as worksheet no arquivo Excel
excel_sheets("UrbanPop.xlsx")

# Importando com o pacote readxl
df <- read_excel("UrbanPop.xlsx", sheet = 3)
head(df)

# Importando com o pacote xlsx
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 1)
head(df2)
