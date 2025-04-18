####################################################
#                                                  #  
# Módulo 2 - Tipos de dados e operadores           #
#                                                  #
# Vídeo 01 - Tipos de dados - numeric              #
#                                                  #
####################################################

# Declarando váriáveis (simbolo de atribuição)
var1 <- 1        # primeira forma
var2 = 2         # Segunda forma 
assign("var3",3) # Terceira forma, usando a função assign()

# Para verificar o tipo de dados
# A própria linguagem atribui o tipo de dado
typeof(var1) # double (ponto flutuante)
typeof(var2) 
typeof(var3)

# 1 - Inteiro (numeric)
# Atribuindo o valor 2 (inteiro) a variável x "L"
x <- 2L
typeof(x)
as.integer(2) # Usando a função as.integer()
typeof(x)

# 2 - Double (numeric)
# Atribuindo o valor 2.4 (ponto flutuante) a variável y 
y <- 2.4
typeof(y)
y <- as.double(2.4)
typeof(y)

# 3 - Complex (numeric)
# Atribuindo o valor 3 + 4i a variável z 
z <- 3 + 4i
typeof(z)
z <- as.complex(3 + 4i)
typeof(z)