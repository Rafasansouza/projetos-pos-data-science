####################################################
#                                                  #  
# Módulo 3 - Estruturas de dados                   #
#                                                  #
# Vídeo 04 - Data Frames                           #
#                                                  #
####################################################
# Os data frames são de extrema importância no R, pois 
# são os objetos que guardam os nossos dados. 
# Eles são equivalentes a uma tabela do SQL ou uma planilha do Excel.

numeros <- c(2, 5, 6, 78, 2, 233) # A função c contena os números
letras <- c("a", "b", "c", "d", "e", "f") # Classe character
y <- F # Atribui FALSE para y

dados <- data.frame(valores = numeros, letras, categorias = y) # Combinar vetores em ...
dados # ... um data.frame. Sempre por colunas

str(dados) # Resumo do data.frame
head(dados, n = 3) # Mostra as 3 primeiras linhas
tail(dados, n = 2) # Mostra as 2 últimas linhas

dim(dados) # Dimensões do data.frame, primeiro linhas o depois colunas

nrow(dados) # Número de linhas
ncol(dados) # Número de colunas

rownames(dados) # Nomes das linhas
colnames(dados) # Nomes das colunas

# Indexação
dados[2, 1] # Valor da linha 2 e coluna 1
dados[c(1,4), 2:3] # Linhas 1 e 4 das colunas 2 e 3
dados[2,] # Linha 2 com todas as colunas
dados[, 2] # Coluna 2 com todas as linhas
dados[, 2, drop = FALSE] # Coluna 2 com todas as linhas, mantendo a estrutura de tabela
letras

dados[, -3] # Seleciona tudo, exceto a terceira coluna
dados[, "letras"] # Seleciona a coluna chamada letras
dados["n1" ,] # Seleciona a linha chamada n1
dados$valores # Seleciona a coluna chamada valores
dados$novo.vetor <- c("x", "y", "z", "x", "y", "z") # Adicionar vetor...
str(dados) # ... nesse caso a classe permanece
dados$novo.vetor <- NULL # Deletar um vetor do data.frame (apenas colunas)
dados
