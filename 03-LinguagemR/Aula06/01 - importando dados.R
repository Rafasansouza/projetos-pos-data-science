####################################################
#                                                  #  
# Módulo 6 - Arquivos                              #
#                                                  #
# Vídeo 01 - Importando dados                      #
#                                                  #
####################################################

# Entrada de dados scan() - digite no console (2 enter - sai)
y <- scan()
print(y)

# Entrada de dados readlines() - 2 linhas (texto)
texto <- readLines(n = 2)
print(texto)

# Mostra e muda o diretorio de trabalho
getwd()
setwd("d:/Users/eduardo.mendes/Desktop/Linguagem R/Aula06")

# Importa um arquivo csv

dados01 <- read.table("crabs.csv", header = TRUE, sep = ";", dec = ",")
print(dados01)

# As funções read.csv() e read.csv2() 
dados02 <- read.csv2("crabs.csv")
print(dados02)

dados03 <- read.csv2("crabs.csv", stringsAsFactors = FALSE)
print(dados03)

# Analisando os dados #

# Tamanho do conjunto de dados
dim(dados01)

# Conferir a estrutura dos dados importados
str(dados01)

# Visualizando algumas linhas iniciais e finais dos dados
head(dados01)
tail(dados01)

# Checar os nomes das variáveis
names(dados01)

# Uma rápida análise descritiva
summary(dados01)

# Objetos criados até o momento nesta seção
ls()
