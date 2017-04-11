############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Analise Exploratoria de Dados

# Carregando o dataset
carros <- read.csv2("Base_de_dados/carros-usados.csv", head=T, sep=",")

# Resumo dos dados
head(carros)
str(carros)

# Medidas de Tendencia Central
summary(carros$ano)
summary(carros[c('preco', 'kilometragem')])

# usando as funções de medida de tendencia central
mean(carros$preco)
median(carros$preco)

# verificando a variabilidade dos dados
range(carros$preco)
diff(range(carros$preco))
var((carros$preco))
sd((carros$preco))

# Criando tabelas de contingencia 
?table
str(carros)
table(carros$cor)
table(carros$modelo)
str(carros)

# Calculando a proporcao de cada categoria
model_table <- table(carros$modelo)
prop.table(model_table)


