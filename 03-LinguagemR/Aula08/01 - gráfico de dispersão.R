####################################################
#                                                  #  
# Módulo 8 - Gráficos                              #
#                                                  #
# Vídeo 01 - Gráfico de dispersão                  #
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
plot(riqueza~area) # função plot permite a construção de gráfico
# Função plot recebe 2 vetores x e y
plot(area,riqueza) # o mesmo que o anterior

# Um dos vetores pode ser otimido. O R assume número inteiros no x
plot(area) 

# Colocando título no gráfico
plot(area,riqueza, 
     main="Gráfico Riqueza por Área") 

# Colorindo os pontos
plot(area,riqueza, 
     main="Gráfico Riqueza por Área",
     col="forestgreen") # blue, red, purple

# Mudando os caracteres do ponto
plot(area,riqueza, 
     main="Gráfico Riqueza por Área",
     col=blues9,
     pch='X') 

# Controla a direção das legendas dos eixos (1 ou 3)
plot(area,riqueza, 
     main="Gráfico Riqueza por Área",
     col=blues9,
     pch='X',
     las=1) 

# Alterando o tamanho dos pontos
plot(area,riqueza, 
     main="Gráfico Riqueza por Área",
     col=blues9,
     pch='X',
     las=1,
     cex=5) 

# Alterando a legenda dos eixos 
plot(area,riqueza, 
     main="Gráfico Riqueza por Área",
     col=blues9,
     pch='x',
     las=1,
     cex=1,
     xlab='Área',
     ylab='Riqueza') 
