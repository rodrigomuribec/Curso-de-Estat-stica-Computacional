############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# A familia apply - uma forma elegante de fazer loops

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by


# Usando um Loop
lista1 <- list(a = (1:10), b = (45:77))

# Calculando o total de cada lista
valor_a = 0
valor_b = 0
for (i in lista1$a){
  valor_a = valor_a + i 
}
for (j in lista1$b){
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)

# Calculando o total de cada lista
?sapply
sapply(lista1, sum)

# Aplicando funções com sapply
sapply(lista1, mean)


# apply()
?apply

x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply


escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

# Calculando a média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola







