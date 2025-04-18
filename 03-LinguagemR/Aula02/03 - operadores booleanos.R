####################################################
#                                                  #  
# Módulo 2 - Tipos de dados e operadores           #
#                                                  #
# Vídeo 03 - Operadores booleanos                  #
#                                                  #
####################################################
# Permitem trabalhar com múltiplas condições relacionais na mesma expressão, 
# e retornam valores lógicos verdadeiro ou falso.

# Operador not ! (Exclamação)
res <- !TRUE
typeof(res)
print(res)

res2 <- !(6 != 6)
print(res2)

# Operador or |
5>3 | 10>8  # TRUE
5>3 | 10>11 # TRUE

# Operador and &
5>3 & 10>8  # TRUE 
5>3 & 10>11 # FALSE

# Operador and &&
5>3 &  10>11  # FALSE Avalia as duas condições
5>3 && 10>11  # FALSE Condição 1 TRUE avalia a condição 2

# Operador or ||
5>3 |  10>11  # TRUE Avalia as duas condições
5>3 || 10>11  # TRUE Condição 1 TRUE avalia a condição 2
