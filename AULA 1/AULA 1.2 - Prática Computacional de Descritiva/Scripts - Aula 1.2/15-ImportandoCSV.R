############### DISCIPLINA: Estatística Computacional #############
############### PROF: Rodrigo Lins Rodrigues ######################

# Trabalhando com arquivos csv

# Usando o pacote readr 
install.packages("readr")
library(readr)

# Abre o promt para escolher o arquivo
meu_arquivo <- read_csv(file.choose())
meu_arquivo <- read_delim(file.choose(), sep = "|")

# Importando arquivos
df1 <- read_table("temperaturas.txt", col_names = c("DAY","MONTH","YEAR","TEMP"))
dim(df1)
head(df1)
str(df1)
read_lines("temperaturas.txt", skip = 0, n_max = -1L)
read_file("temperaturas.txt")

# Exportando 
write_csv(iris, "iris.csv")
dir()
