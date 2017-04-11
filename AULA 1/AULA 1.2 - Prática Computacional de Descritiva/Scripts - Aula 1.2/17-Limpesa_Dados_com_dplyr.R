############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

setwd("D:/Nuvem/Google Drive/Trabalho/2. UPE/ESPECIALIZAÇÃO/2. AULAS/AULA 1 - Sexta - 31-03-17/AULA 1.2 - Prática Computacional de Descritiva/Scripts - Aula 1.2")
# dplyr

install.packages("readr")
install.packages("dplyr")
library(readr)
library(dplyr)

# Carregando o dataset
df_sono <- read_csv("Base_de_dados/sono.csv")
head(df_sono)
str(df_sono)

#contando a quantidade de vezes que a cidade aparece
count(df_sono, cidade)

# Mostrar a base com x linhas
sample_n(df_sono, size = 10)


# Filtrando de acordo com uma variável - filter()
filter(df_sono, sono_total >= 16)
filter(df_sono, sono_total >= 16, peso >= 80)
filter(df_sono, cidade %in% c("Recife", "Curitiba"))


# arrange()
df_sono %>% arrange(cidade) %>% head

df_sono %>% 
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>% 
  head

df_sono %>% 
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>% 
  filter(sono_total >= 16)

df_sono %>% 
  select(nome, cidade, sono_total) %>%
  arrange(cidade, desc(sono_total)) %>% 
  filter(sono_total >= 16)


# summarize()
df_sono %>% 
  summarise(media_sono = mean(sono_total))

df_sono %>% 
  summarise(media_sono = mean(sono_total), 
            min_sono = min(sono_total),
            max_ssono = max(sono_total),
            total = n())






