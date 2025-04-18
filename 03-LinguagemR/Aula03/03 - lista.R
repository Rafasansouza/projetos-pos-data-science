####################################################
#                                                  #  
# Módulo 3 - Estruturas de dados                   #
#                                                  #
# Vídeo 03 - Lista                                 #
#                                                  #
####################################################
# Listas são uma estrutura de dados mais versátil por pelo menos 3 motivos:
# 1.	Os elementos podem ser de diferentes classes de objetos;
# 2.	Cada elemento pode ter um tamanho diferente;
# 3.	Os elementos podem conter diferentes estrutura de dados (matrix, vector);

# Cria um vetor e uma matriz 3 x 2
v <- c("Co", "Co", "Co", "Tr", "Tr", "Tr") # Vetor de caracteres
m <- matrix(c(1, 2, 3, 11, 12, 13), nrow = 3, ncol = 2) # Matriz, 3 x 2

# Cria a lista usando o matriz e o vetor
minha.lista <- list(m, 1, v) # Lista com objetos variados
minha.lista

str(minha.lista) # Estrutura da lista

length(minha.lista) # Mostra o comprimento do vetor

names(minha.lista) <- c("A", "B", "C") # Atribui nomes a lista

minha.lista

# Indexação
minha.lista[1] # Acessar primeira sublista
minha.lista[[1]] # Primeiro objeto da lista
minha.lista[["C"]] # Objeto com o nome C na lista
minha.lista$A # Objeto com o nome A na lista
minha.lista[[1]][3, 2] # Primeiro objeto da lista (uma matriz), linha 3, coluna 2
minha.lista[c(2:3)] # Acessar várias sublistas. minha.lista[[c(2:3)]] não funciona
minha.lista[["C"]] <- NULL # Deletar item da lista. Mesmo que minha.lista["C"]
minha.lista$novoitem <- 1:3 # Adicionar item a lista
minha.lista