############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Funcoes

# Help
?sample
args(sample)
args(mean)
args(sd)


# Funcoes Built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5), 6)

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

# Funcoes dentro de funcoes
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))


# Criando funcoes
myfunc <- function(x) { x + x }
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1) #Local
  num
}

jogando_dados()

