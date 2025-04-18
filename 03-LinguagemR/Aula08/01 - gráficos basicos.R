####################################################
#                                                  #  
# Módulo 8 - Gráficos                              #
#                                                  #
# Vídeo 01 - Gráficos básicos                      #
#                                                  #
####################################################
# Criando um variável categorica para armazenar os nível
# de estadiamento de um câncer
estadiamento <- c("moderado", "grave", "grave", "grave", "leve", "leve")

# Criando um gráfico de bar plot
barplot(table(estadiamento))

# Criando uma ordenação desejada 
estadiamento.ordenado <- factor(estadiamento,
                                levels=c("leve", "moderado", "grave"),
                                ordered=TRUE)

# Pltando o novo gráfico de barras
barplot(table(estadiamento.ordenado))

# Gráfico de barra multipla
tabela1 <- table(mpg$drv, mpg$fl)
barplot(tabela1, legend.text=TRUE)

# Usando uma paleta de cores chamada terrain.colors com 3 cores
barplot(tabela1,
        legend.text=TRUE,
        args.legend = list(x='topleft'), # ajusta a legenda
        col=terrain.colors(3),           # colocar corres nas barras
        names.arg = c(c="gas",           # adiciona legenda
                      d="diesel",
                      e="ethanol",
                      p="premium",
                      r="regular")) 

