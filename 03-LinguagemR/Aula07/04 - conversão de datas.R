##############################################
# Módulo 7 - Limpeza                         #
#                                            #  
# Vídeo 04 - Conversão de datas              #
##############################################
# O valor da variável Datetime é um string

# Instalando o pacote
if(!require("lubridate")) install.packages("lubridate")
# Carregando o pacote
library("lubridate")

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
glimpse(bike)  # Verifica as variaveis

suppressMessages(suppressWarnings(library(lubridate)))

bike$data_hora <- mdy_hm(bike$datetime)
glimpse(bike)

# Criando duas variaveis data e hora
bike <- bike %>% 
  tidyr::separate(datetime, 
                  into = c("data", "hora"), 
                  sep = " ",
                  remove = FALSE)
glimpse(bike)

# Transformando data em formato DATE
bike$data <- as.Date(bike$data)
glimpse(bike)

# Transmorando hora em hora/minuto/segundo
if(!require("hms")) install.packages("hms")
suppressMessages(suppressWarnings(library(hms)))
bike$hora <- as_hms(bike$hora)
glimpse(bike)