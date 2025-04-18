####################################################
#                                                  #  
# Módulo 8 - Graficos                              #
#                                                  #
# Vídeo 02 - Gráfico de linha                      #
#                                                  #
####################################################
# Construção dos vetores
riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)

# Categorização da área
area.cate <- rep(c("pequeno", "grande"), each=6)

# Acessando o help da função
?plot

# Plotagem dos pontos no gráfico
plot(riqueza~area, 
     type="l") # função plot permite a construção de gráfico

# Função plot recebe 2 vetores x e y
plot(area,riqueza,
     type="l") # o mesmo que o anterior

# Um dos vetores pode ser otimido. O R assume número inteiros no x
plot(area,
     type="l") 

# Colocando título no gráfico
plot(area,riqueza,,
     type="l", 
     main="Gráfico Riqueza por Área") 

# Colorindo os pontos
plot(area,riqueza,
     type="l", 
     main="Gráfico Riqueza por Área",
     col="forestgreen") # blue, red, purple

# Usando o pacote ggplot2

# Instalando o pacote
if (!require(ggplot2)) install.packages(("ggplot2"))

# Carregando o pacote
library("ggplot2")

# Conjunto de dados temperatura x umidade
TM=c(23.4,19.8,12.8,16.3,20.8,17.4,20.0,21.8,21.8,20.6,20.3,20.6,20.4,18.1,20.2,19.3,17.2,20.8,
     20.7,17.4,21.8,23.8,25.8,26.3,25.3,24.5,21.4,23.3,24.3,21.2,24.3,23.6,23.5,22.3,21.4,19.7,
     22.1,20.5,22.3,21.8,18.0,21.3,24.1,23.9,23.6,23.3,23.2,22.0,22.4,20.8,20.2,22.6,23.7,19.9,
     19.7,21.4,22.5,21.4,20.4,24.5,22.7,20.3,23.7,24.0,23.6,21.6,22.0,22.6,21.3,22.5,22.2,26.3,
     27.2,28.3,25.9,25.8,26.6,24.9,20.8,19.4,21.6,22.2,23.8,20.9,22.9,25.0,23.7,23.8,24.8,24.8,
     24.8,25.4,24.4,23.5,24.7,25.3,25.2,23.8,22.8,22.2,26.0,27.8,28.1,25.8,26.8,25.3,25.0,26.6,
     26.4,26.7,26.8,25.5,24.0,23.2,22.6,23.4,24.5,25.7,25.0,26.4,26.2,26.2,26.9,24.7,25.6,25.0,
     23.7,22.8,25.5,26.3,26.9,25.1,26.7,25.6,24.5,26.2,26.2,24.4,26.3,25.6,24.4,24.0,26.7,28.2,
     26.3,26.7,25.4,24.8,24.6,26.3,28.7,28.6,26.3,28.6,29.0,28.2,24.3,23.0,22.9,24.6,26.6,28.5,
     28.0,25.5,23.2,23.7,23.0,22.4,23.6,23.6,23.5,23.5,22.9,23.5)
UR=c(68,93,86,55,54,51,45,43,55,54,58,57,64,89,73,80,96,71,86,95,74,62,49,43,51,62,86,73,64,95,
     68,77,86,93,76,63,69,94,88,89,88,67,76,84,71,88,83,83,74,54,51,61,74,97,94,97,66,58,65,56,
     82,93,66,64,67,65,67,67,63,62,76,51,57,54,80,65,65,65,93,88,63,68,65,98,83,64,67,62,59,78,
     75,70,63,62,53,46,42,55,60,51,51,47,42,60,62,77,74,58,63,67,66,83,81,87,95,80,71,68,74,69,
     75,74,75,90,86,91,91,98,84,81,74,82,69,77,84,78,74,87,75,80,89,90,77,73,82,80,82,75,79,70,
     61,63,74,63,58,62,76,76,74,69,64,56,61,86,94,85,78,91,82,80,81,85,89,84)
TEMPO=c(1:174)
# Usando o pacote ggplot2
data=data.frame(tempo=TEMPO,Umidade=UR,Temperatura=TM)
attach(data)

# Gráficos individuais
ggplot(data, 
       aes(x = tempo))+
       geom_line(aes(y = Temperatura, 
       colour = "Temperatura"), 
       col="red")+
       xlab("Tempo (dias)")

ggplot(data, aes(x = tempo))+
       geom_line(aes(y = Umidade, colour = "Umidade"), 
       col="blue")+ 
       xlab("Tempo (dias)")

# Juntando os dois gráficos
(plots=ggplot(data, aes(x = tempo)) +
    geom_line(aes(y = Umidade, 
                  colour = "Umidade"))+  
    scale_x_continuous() + 
    geom_line(aes(y = Temperatura, 
                  colour = "Temperatura")))

# Criando o eixo Y secundário
(plots=plots + 
    scale_y_continuous(sec.axis = sec_axis(~ . *1 ), 
                       limits = c(0, 100)))

# Nomeando eixo Y primário e secundário
(plots=plots+ 
    scale_y_continuous(name = expression("Umidade (%)"), 
                       sec.axis = sec_axis(~ . *1 , 
                                 name = expression("Temperatura"^o*"C"))))

# Organizando a legenda
(plots=plots+
    scale_colour_manual("", 
                        breaks = c("Umidade", "Temperatura"), 
                        values = c("red","blue")))

# Removendo linha de grade e cor de fundo
(plots=plots+theme_bw()+
    theme(panel.grid.major = element_blank(), 
          panel.grid.minor = element_blank()))

# Salvando imagem em Tif
tiff("Secundário.tif", res=100, units = "in", width=8, height = 5)

ggplot(data, aes(x = tempo)) +
  geom_line(aes(y = Umidade, colour = "Umidade"))+  
  scale_x_continuous() + 
  scale_y_continuous(name = expression("Umidade (%)"), 
                     sec.axis = sec_axis(~ . *1 , name = expression("Temperatura"^o*"C")), 
                     limits = c(0, 100)) +
  geom_line(aes(y = Temperatura, colour = "Temperatura")) +
  scale_colour_manual("", breaks = c("Umidade", "Temperatura"), values = c("red","blue")) +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank()
  )

dev.off()