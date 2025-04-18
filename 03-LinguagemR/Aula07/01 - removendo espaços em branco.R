##############################################
# Módulo 7 - Limpeza                         #
#                                            #  
# Vídeo 01 - Removendo espaços em branco     #
##############################################
# NAs - Dados ausentes
# Instalando e carregando o pacote
if (!require(tidyverse)) install.packages(("tidyverse"))

# Carregando o pacote
library("tidyverse")

# Visualização e definição do diretório de trabalho
getwd()
setwd("d:/Users/eduardo.mendes/Desktop/Linguagem R/Aula07")

# Lendo o arquivo csv
bike <- read_csv("raw_bike_data.csv")
class(bike) # Data frame
# Alterando o nome das colunas
bike <- bike %>% rename(data_hora = datetime,
                        estacao = season,
                        feriado = holiday,
                        dia_trabalho = workingday,
                        clima = weather, 
                        humidade = humidity,
                        vento = windspeed,
                        registrado = registered,
                        cont = count,
                        fontes = sources)

bike # As 10 primeiras linhas 

str(bike) # Resumindo a estrutura de dados do data frame

dim(bike) # Fornece as dimensões de linha e coluna de um data frame

head(bike) # Seis primeiras observações

tail(bike) # Seis últimas observações

glimpse(bike)  # Uma outra forma de verificar as variaveis

table(is.na(bike)) # Encontra dados ausentes no data frame

prop.table(table(is.na(bike))) * 100  # calcula proporções de dados NAs

apply(is.na(bike), 2, sum) # Verifica todo o data frame de forma vetorizado
colSums(is.na(bike))  # uma outra alternativa

bike$sources[is.na(bike$sources)] <- "Desconhecida" # Substitui NA por Desconhecida

bike$humidity[is.na(bike$humidity)] <- mean(bike$humidity, na.rm = TRUE) # Substitui pela média

# Calcula o número total de NA´s
sum(is.na(bike))
