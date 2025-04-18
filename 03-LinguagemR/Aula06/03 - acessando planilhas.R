####################################################
#                                                  #  
# Módulo 6 - Arquivos                              #
#                                                  #
# Vídeo 03 - Acessando planilhas                  #
#                                                  #
####################################################

# Instalando o pacote
if (!require(readxl)) install.packages(("readxl"))
# Carregando o pacote
library("readxl")

# Mostra e muda o diretório de trabalho
getwd()
setwd("d:/Users/eduardo.mendes/Desktop/Linguagem R/Aula06")

# Carregando o arquivo
dados01 <- read_excel("crabs.xls", sheet = "Plan1")
dados01

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
