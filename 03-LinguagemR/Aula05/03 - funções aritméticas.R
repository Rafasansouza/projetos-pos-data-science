####################################################
#                                                  #  
# Módulo 5 - Pacotes e funções                     #
#                                                  #
# Vídeo 03 - Funções aritméticas                  #
#                                                  #
####################################################
# Trunca (corta) as decimais de um valor 
trunc(x = -10.723456)
# Arredondamento de um valor na 4º casa decimal
round(-10.723456, digits = 4)

# Não considera que a 1º decimal é 7 e resulta em -10
signif(-10.723456, digits = 1)
# Faz arredondamento para o valor 11
signif(-10.723456, digits = 2)
# Faz arredondamento somente considerando a 1º decimal (7) porque a 2º (2) não é significativa
signif(-10.723456, digits = 3)

# Faz arredondamento do valor positivo
ceiling(10.723456)
# Faz arredondamento do valor negativo
ceiling(-10.723456)

# Faz arredondamento do valor positivo
floor(10.723456)
# Faz arredondamento do valor negativo
floor(-10.723456)

# 10 dividido por 3 resulta em 3, não gera decimais
10 %/% 3
# 10 dividido por 2 nao tem resto (resto e zero)
10 %% 2
# 10 dividido por 3 tem resto igual a 1
10 %% 3 

# Converte o valor para positivo
valorOriginal <- -10235.12
valorPositivo <- abs(valorOriginal)
print(valorPositivo)

# Calcula a raiz quadrada do valor original
valorOriginal <- 1000
sqrt(x = valorOriginal)

# Valor para teste do exponencial
valor <- 1
exp(valor)

# Calcula chances de ganhar na mega sena
chances <- factorial(60) / ((factorial(60 - 6) * factorial(6)))
chances

# Potência, primeiramente
cincoAoQuadrado <- 5^2
cincoAoQuadrado