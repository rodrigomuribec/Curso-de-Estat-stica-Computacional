####### SCRIPT PARA TESTAR VALOR DE REFERENCIA PARA UMA AMOSTRA #######

# Ler os dados de um arquivo (interagindo com o usuário)
dados <- read.table(file.choose(),header=TRUE)

# Mostra boxplots da variável tempo de pintura
boxplot(dados$tempoPitura)

# Plota o histograma pra verificar tendencia de normalidade
hist(dados$tempoPitura)

# Aplica o teste de normalidade
shapiro.test(dados$tempoPitura)

# Alica o teste de hipóteses
t.test(dados$tempoPitura, mu = 690)




####### SCRIPT PARA TESTAR VALOR DUAS AMOSTRAS INDEPENDENTES #######

# Ler os dados de um arquivo (interagindo com o usuário)
dados <- read.table(file.choose(),header=TRUE)

# Mostra boxplots para as variáveis x e y
boxplot(dados$x, dados$y)

# Plota o hitograma para as duas variáveis
hist(dados$x)
hist(dados$y)

# Aplica o teste de normalidade
shapiro.test(dados$x)
shapiro.test(dados$y)

# Alica o teste de hipóteses
t.test(dados$x, dados$y, var.equal = TRUE, conf.level = 0.90)

############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################


####### SCRIPT PARA TESTAR VALOR DUAS AMOSTRAS ALEATÓRIAS RELACIONADAS OU PAREADAS #######

# Construíndo a base de dados
antes <- c(5.5,6.1,6.7,6.2,7.0,7.2,5.8,6.8,6.7,7.4,5.0)
depois <-c(6.0,7.2,6.8,8.2,9.0,5.8,6.5,7.2,8.7,5.0,9.2)

# Mostra boxplots para as variáveis antes e depois
boxplot(antes, depois)

# Plota o hitograma para as duas variáveis
hist(antes)
hist(depois)

# Aplica o teste de normalidade
shapiro.test(antes)
shapiro.test(depois)

# Alica o teste de hipóteses
t.test(antes, depois, paired = TRUE, conf.level = 0.95)



