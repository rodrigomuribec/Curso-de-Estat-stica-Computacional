############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Ler os dados de um arquivo (interagindo com o usuário)
dados <- read.table(file.choose(),header=TRUE)

# Mostra boxplots da variável tempo de pintura
boxplot(dados$tempoPitura)

# Plota o histograma pra verificar dendencia de normalidade
hist(dados$tempoPitura)

# Aplica o teste de normalidade
shapiro.test(dados$tempoPitura)

# Alica o teste de hipóteses
t.test(dados$tempoPitura, mu = 690)
