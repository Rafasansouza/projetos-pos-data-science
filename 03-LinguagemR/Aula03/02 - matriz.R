####################################################
#                                                  #  
# Módulo 3 - Estruturas de dados                   #
#                                                  #
# Vídeo 02 - Matriz                                #
#                                                  #
####################################################
# Chamamos de matriz um conjunto de números dispostos em uma tabela e 
# distribuídos em “m” linhas e “n” colunas. 
# Também podemos chamar matrizes de vetores bidimensionais.

# Criando uma matriz de 3 linhas e 2 colunas
matriz <- matrix(c(1, 2, 3, 11, 12, 13), nrow = 3, ncol = 2) # Matriz, 3 x 2
matriz

str(matriz) # Resumo da matriz

head(matriz, n = 1) # Mostra a primeira linha
tail(matriz, n = 1) # Mostra a última linha

dim(matriz) # Dimensões da matriz, primeiro linhas o depois colunas

nrow(matriz) # Número de linhas
ncol(matriz) # Número de colunas

rownames(matriz) # Nomes das linhas, nesse caso NULL
colnames(matriz) # Nomes das colunas, nesse caso NULL

# Cria os vetores de numeros e letras
numeros <- c(2, 5, 6, 78, 2, 233) # A função c contena os números
letras <- c("a", "b", "c", "d", "e", "f") # Classe character
matriz.por.colunas <- cbind(numeros, letras) # Concatenados por colunas
matriz.por.linhas <- rbind(numeros, letras) # Concatenados por linhas

matriz.por.colunas # Note que os números ficaram entre aspas, indicando... 
matriz.por.linhas # ... que foram convertidos em caracteres 

#Indexação de matriz
matriz[1, 1] # Valor da linha 1 e coluna 1
matriz[1, 1, drop = FALSE] # Valor da linha 1 e coluna 1, mantendo a estrutura da matriz
matriz[-3, , drop = FALSE] # Seleciona tudo, exceto a terceira linha
matriz[3, 1] <- 0 # Nada pode ser deletado, apenas alterado o valor (incluindo NA)
matriz <- matriz[,c(2, 1)] # Mudar a ordem das colunas
matriz