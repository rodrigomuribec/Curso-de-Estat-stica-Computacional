############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Apontendo o diretorio de trabalho
setwd("D:/Nuvem/Google Drive/Trabalho/2. UPE/ESPECIALIZAÇÃO/2. AULAS/AULA 4 - Sábado - 08-04-17/Aula 4.1 - Análise de Conglomerados e Fatorial/Scripts - Aula 4.1")

# Lendo a base de dados
dados <- read.csv2("dados.csv",head=T)

# Padronizando a base de dados pelo Zscore
dados <- data.frame(scale(dados))

#Com isso o R entende que os nomes da primeira linha da base importada são 
#as variáveis e cada linha refere-se a um registro, sendo a primeira coluna a 
#identificação de cada registro
variaveis<-names(dados)
objetos<-rownames(dados)

# aplicando o metodo de cluster hierarquico
output_cluster<-hclust(dist(dados),method='ward.D')
dendograma_output_cluster<-plclust(output_cluster,labels=objetos,ylab='distancia')



