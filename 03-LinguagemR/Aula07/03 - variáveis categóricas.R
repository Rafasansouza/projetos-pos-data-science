##############################################
# Módulo 7 - Limpeza                         #
#                                            #  
# Vídeo 03 - Variáveis categóricas           #
##############################################

# Instalando e carregando o pacote
if (!require(tidyverse)) install.packages(("tidyverse"))

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

glimpse(bike)  # Uma outra forma de verificar as variaveis

# Tornando a variável categorica 0 para não e 1 para sim
bike$holiday <- factor(bike$holiday, levels = c(0,1),
                       labels = c("nao", "sim"))

# Tornando a variável categorica 0 para não e 1 para sim
bike$workingday <- factor(bike$workingday, levels = c(0,1),
                          labels = c("nao", "sim"))

# Tornando a variável categorica
bike$season <- factor(bike$season, levels = c(1, 2, 3, 4),
                      labels = c("primavera", 
                                 "verao", 
                                 "outono", 
                                 "inverno"),
                      ordered = TRUE)

# Tornando a variável categorica
bike$weather <- factor(bike$weather, levels = c(1, 2, 3, 4),
                       labels = c("nublado", 
                                  "neblina", 
                                  "chuva", 
                                  "chuva_forte"),
                       ordered = TRUE)
glimpse(bike)  # Uma outra forma de verificar as variaveis
