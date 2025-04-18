####################################################
#                                                  #  
# Módulo 6 - Arquivos                              #
#                                                  #
# Vídeo 04 - Manipulando dados                     #
#                                                  #
####################################################
# Instalando o pacote
if (!require(tidyverse)) install.packages(("tidyverse"))

# Carregando o pacote
library("tidyverse")

# O conjunto de dados mpg que vem junto com o ggplot2 é um subconjunto dos dados 
# de economia de combustível que a EPA (Enviroment Protection Agency - USA)

# Carregando os dados
data("mpg")
mpg

# Verificando quais as montadoras dos carros
unique(mpg$manufacturer)

# Filtrando os carros das montadoras do Brasil
cfv <- filter(mpg, manufacturer %in% c("chevrolet", "ford", "volkswagen"))
cfv # novo data frame
unique(cfv$manufacturer)

# Visualizando o consumo das três marcar
boxplot(cty~manufacturer, # plota o consumo de acordo com a montadora
        data=cfv,         # indica que os dados estão no data frama cfv
        col="lightblue")  # colore os box com a cor lightblue

# Carros que rodam mais de 30 milhas por galão
bestcars <- filter(cfv, cty > 30)
bestcars$model

# Selecionando as colunas desejadas em um data frame
newdf <- select(mpg, manufacturer, cty, displ)
str(newdf)

# Crindo um vetor numérico x
x <- c(0,11,222,333,44,55,66,77,88,99,100,110)

# Extraindo a média de km percorrida na estrada por carros da ford
# com tração nas 4 rodas, arredondando o resultado para 2 casas decimais
# usando o operador pipe %>%
mpg %>%
  filter(manufacturer=='ford' & drv=="4") %>%
  select(hwy) %>%
  pull() %>%
  mean() %>%
  round(2)

# Transforma a unidade de medida em km usando a função mutate()
mutate(cty.km = cty*1.609344, mpg)



