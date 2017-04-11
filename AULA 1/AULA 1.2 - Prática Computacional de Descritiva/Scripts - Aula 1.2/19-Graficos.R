
############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Graficos em R

# Demo
demo("graphics")


# Plot Basico
altura <- c(145, 167, 176, 123, 150)
largura <- c(51, 63, 64, 40, 55)

plot(altura, largura)


# Plotando um Dataframe
?lynx
plot(lynx)
plot(lynx, ylab = "Plots com Dataframes", xlab = "")
plot(lynx, ylab = "Plots com Dataframes", xlab = "Observações")
plot(lynx, main = "Plots com Dataframes", col = 'red')

# plotando um gráfico de pizza
?iris
attach(iris)
Values = table(Species) 
labels = paste(names(Values))
pie(Values, labels = labels, main = "Distribuição de Especies")

# plotando um gráfico de barras
?barplot
dados <-read.csv2("Base_de_dados/dados.csv", head=T)
sexo<-table(dados$Sexo)
barplot(sexo)

escolaridade<-table(dados$Escolaridade)
barplot(escolaridade)


# plotando um gráfico histograma
dados = cars$speed
hist(dados)
hist(dados, breaks = 10)
hist(dados, labels = T, breaks=c(0,5,10,20,30))

# plotando um boxplot
sleep <- data.frame(sleep)
attach(sleep)
sleepboxplot = boxplot(data = sleep, 
extra ~ group,main = "Duração do Sono",
col.main = "red", ylab="Horas", xlab="Droga")

# Utilizando a biblioteca ggplot2

library(ggplot2)

# primeira versão do gráfico
mpg<-data.frame(mpg)
g <- ggplot(mpg, aes(class))
g + geom_bar()

# segunda versão do gráfico
g <- ggplot(mpg, aes(class))
g + geom_bar(aes(fill = drv))


