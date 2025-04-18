####################################################
#                                                  #  
# Módulo 3 - Estruturas de dados                   #
#                                                  #
# Vídeo 01 - Vetor                                 #
#                                                  #
####################################################
# Imagine que você queira armazenar os nomes de todos os times da série A 
# do campeonato brasileiro. Teria que criar 20 variáveis diferentes, 
# uma para cada time. Será que teríamos como fazer isso de forma diferente?

# Os vetores (vector) são objetos que armazenam um ou mais elementos, 
# do tipo numeric, character ou logical. 
# Os vetores podem ser criados com a função c, que concatena objetos. 
# Um vetor só suporta um único tipo de dados. 

# Vetor - estrutura básica de dados
# Uma sequencia de dados do mesmo tipo
numeros <- c(2, 5, 6, 78, 2, 233) # A função c concatena os números

is.vector(numeros) # Confere se o objeto é um vetor

class(numeros) # Confere a classe, só pode haver uma classe para todo o vetor

length(numeros) # Mostra o comprimento do vetor

names(numeros) # Não há nomes

names(numeros) <- c("n1", "n2", "n3", "n4", "n5", "n6") # Atribuir nomes ao vetor numeros
names(numeros) # Os nomes do vetor

letras <- c("a", "b", "c", "d", "e", "f") # Classe character
letras

class(letras)

logico <- c(F, T) # Classe logical
logico

class(logico)

# Indexação de vetores
numeros[2] # Seleciona o segundo valor do vetor
numeros[c(3, 6, 1)] # Seleciona o terceiro, sexto e primeiro valor do vetor
numeros[1:3] # Seleciona os primeiros três valores do vetor
numeros[12] # Índece fora dos limites, retorna um NA
numeros[-3] # Seleciona tudo, exceto o terceiro valor
numeros["n5"] # Seleciona o elemento com nome n5, no caso o quinto elemento
numeros[c(TRUE, FALSE, F, F, F, T)] # Seleciona o elemento o primeiro e último elemento
numeros[1] <- 12 # muda o valor do item 1 vetor numeros
numeros
