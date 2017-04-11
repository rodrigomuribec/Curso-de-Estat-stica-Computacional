############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################


# Ler os dados de um arquivo (interagindo com o usuário)
dados <- read.table(file.choose(),header=TRUE)

# Visão descritiva (gráfica sobre as duas variáveis)
plot(dados$Peso, dados$Altura)

# Construindo o modelo de regressão linear múltiplo
modelo <- lm(dados$Peso~dados$Altura)

# Visualizando o modelo
modelo

# Mostrando o resultado do modelo
summary(modelo)

# Gerando os residúos padronizados
padronizados <- rstandard(modelo)

# Plotando o gráfico dos resíduos
plot(dados$Peso, padronizados)

# Verificando a normalidade dos resíduos pelo qqplot
qqnorm(padronizados)
qqline(padronizados)


