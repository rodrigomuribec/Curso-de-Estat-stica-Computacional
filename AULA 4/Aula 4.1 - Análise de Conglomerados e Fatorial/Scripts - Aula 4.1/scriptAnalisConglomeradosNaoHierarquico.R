############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Apontendo o diretorio de trabalho
setwd("D:/Nuvem/Google Drive/Trabalho/2. UPE/ESPECIALIZAÇÃO/2. AULAS/AULA 4 - Sábado - 08-04-17/Aula 4.1 - Análise de Conglomerados e Fatorial/Scripts - Aula 4.1")

# Lendo a base de dados
dados <- read.csv2("dados.csv",head=T)

# Padronizando a base de dados pelo Zscore
dadosPadronizados <- data.frame(scale(dados))

# Realizando o agrupamento não-hierarquico por Kmeans
output_cluster<-kmeans(dadosPadronizados,3)
grupos<-output_cluster$cluster
matriz<-cbind(dadosPadronizados,grupos)
write.table(file='dadosKMeans.csv',matriz, sep=';',dec=',')

# Incluindo a coluna de agrupamento nos dados não padronizados
dados<-cbind(dados,grupos)

# Fazendo o boxplot com os dados agrupados e não padronizados
boxplot(dados$Altura,dados$grupos)
