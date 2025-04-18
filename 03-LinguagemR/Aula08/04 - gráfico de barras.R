####################################################
#                                                  #  
# Módulo 8 - Graficos                              #
#                                                  #
# Vídeo 04 - Gráfico de barras                     #
#                                                  #
####################################################

# Usando o pacote ggplot2
# Instalando o pacote
if (!require(ggplot2)) install.packages(("ggplot2"))

# Carregando o pacote
library("ggplot2")

# Simulando um banco de dados
df <- data.frame(tratamento = c("a", "b", "c"),
                 tamanho = c(1.3, 1.9, 3.2))

# Boxplot
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) + # funções aes passa as coordenadas
  geom_bar(stat = "identity") # função geom passa o tipo de gráfico

#Gráfico de Barras com preenchimento colorido
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity", 
           fill = "tomato")

#Gráfico de Barras com contorno colorido
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity", 
           color = "tomato")

#Gráfico de Barras com largura modificada
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity", 
           width = .75) +
  ggtitle("width = .75")

#Gráfico de Barras com largura modificada
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity", 
           width = 0.25) +
  ggtitle("width = .25") 

#Gráfico de Barras Vertical
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity")

#Gráfico de Barras Horizontal
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity") + 
  coord_flip()

#Gráfico de Barras com preenchimento colorido
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento, 
           fill = tratamento)) +
  geom_bar(stat = "identity")

#Gráfico de Barras
ggplot(df, 
       aes(y = tamanho, 
           x = tratamento)) +
  geom_bar(stat = "identity", 
           fill = gray(.3)) +
  scale_y_continuous(limits = c(0,3.5), 
                     breaks = seq(0,3.5,.5)) +
  theme_classic(base_size = 18) +
  xlab("Tratamento") + 
  ylab("Comprimento da plântula (cm)") 