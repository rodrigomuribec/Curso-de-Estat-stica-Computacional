######### DISCIPLINA: ESTATÍSTICA COMPUTACIONAL ####################
######### PROFEOSSOR: RODRIGO LINS RODRIGUES #######################

# Pacotes necessários
library(caret)  # Para a Matriz de confusao, acuracia, sensibilidade e especificidade 
library(ROCR)   # Para a Curva ROC

####################################################################
########### Importando e tratando a base de dados ###############
####################################################################

# Setando diretório de trabalho
setwd("D:/Nuvem/Google Drive/Trabalho/2. UPE/ESPECIALIZAÇÃO/2. AULAS/AULA 3 - Sexta- 07-04-17/Aula 3.1 - Modelos de Regressão/Scripts - Aula 3.1")

# Importando base de dados
dados <- read.csv2("atrasado.csv", header = T)

# Separando os dados de treinamento e de teste com o pacote caret
split <- createDataPartition(y = dados$chegou_atrasado, p = 0.7, list = FALSE)
treinamento <- dados[split,]
teste <- dados[-split,]

# Criando o Modelo a partir dos dados de treinamento
modelo <- glm(chegou_atrasado~distancia+quantidade_semaforos
              +periodo+perfil_volante2+perfil_volante3,
              family=binomial(link="logit"),data=treinamento)

###################################################################
################ Avaliando o classificador #####################
###################################################################

# Aplicando os dados de teste no modelo construido
classificacaoProb <- predict(modelo,newdata=teste,type="response")
classificacaoBinaria <- ifelse(classificacaoProb > 0.5,1,0)

# Gerando a Matriz de confusao e metricas para a analise do modelo
MatrizDeConfusao<- confusionMatrix(data=classificacaoBinaria,
reference=teste$chegou_atrasado,positive = "1")
print(MatrizDeConfusao)

# Curva ROC
predicao <- prediction(classificacaoProb, teste$chegou_atrasado)
perform <- performance(predicao, measure = "tpr", x.measure = "fpr")
plot(perform,col="blue",lwd=2,main="Curva ROC para o Modelo Logístico")
abline(a=0,b=1,lwd=2,lty=2,col="gray")
aucFG <- performance(FG, measure ="auc")
aucFG <- aucFG@y.values[[1]]
aucFG


