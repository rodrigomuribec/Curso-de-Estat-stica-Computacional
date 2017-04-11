############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Importando base de dados

dados <- read.csv2("Base_de_dados/dados.csv", head=T)
dados

# Verificando valores de correlação de pearson

cor(dados$Idade, dados$Peso)
plot(dados$Idade, dados$Peso)

cor(dados$Altura, dados$Peso)
plot(dados$Altura, dados$Peso)

# Gráfico de correlação 

library(corrplot)
M <- cor(mtcars)
corrplot(M, method="circle")
