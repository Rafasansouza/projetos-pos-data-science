####################################################
#                                                  #  
# Módulo 2 - Tipos de dados e operadores           #
#                                                  #
# Vídeo 02 - Operadores de comparação              #
#                                                  #
####################################################
#Também conhecidos como operadores relacionais (relação entre dois outros valores), 
# permitem estabelecer a relação entre dois valores de entrada, 
# e retornar um valor lógico verdadeiro ou falso dependendo da relação. 

# Criando variáveis numéricas (atribuição)
var1 <- 1 
var2 <- 2 

# Retorna TRUE/FALSE - Logical
result1 <- var1 == var2 # igual a 
typeof(result1) # Variável do tipo Logical
print(result1)  # Mostra o resultado da váriável
result2 <- var1 != var2 # diferente de (exclamação)
print(result2)
result3 <- var1 > var2  # maior que
print(result3)
result4 <- var1 < var2  # menor que
print(result4)
result5 <- var1 >= var2 # maior ou igual a
print(result5)
result6 <- var1 <= var2 # menor ou igual a
print(result6)

# Criando variáveis character (atribuição)
var1 <- 'a'
var2 <- 'B'
result1 <- var1 == var2 # igual a 
print(result1)
result2 <- var1 != var2 # diferente de (exclamação)
print(result2)
result3 <- var1 > var2  # maior que
print(result3)
result4 <- var1 < var2  # menor que
print(result4)
result5 <- var1 >= var2 # maior ou igual a
print(result5)
result6 <- var1 <= var2 # menor ou igual a
print(result6)