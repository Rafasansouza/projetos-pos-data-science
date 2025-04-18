####################################################
#                                                  #  
# Módulo 4 - Estruturas condicionais e laços       #
#                                                  #
# Vídeo 02 - For                                   #
#                                                  #
####################################################
# Frequentemente é preciso repetir um trecho de um script diversas vezes. 

# A estrutura de repetição for permite criar loops para casos onde sabemos de antemão 
# o número de repetições que devem ser realizadas.
for (i in 1:10) { # Sabemos quantas vezes deve ser repetido 
  print(i)
}

x <- c(1, 2, 4, 5, 7, 9, 11)
for (i in x) { # Sabemos quantas vezes deve ser repetido
  print(i)
}

for (i in x) { # Sabemos quantas vezes deve ser repetido
  x2 <- i^2
  print(x2)
}

# Para forçar a saída de um laço, usa-se o comando break.
soma<-0
for(i in 1:8){ # Sabemos quantas vezes deve ser repetido
  soma<-soma+1
  if (soma>5) break
  print(i)
}

# Usando um vetor
for(i in c(-50,4,2.2,pi)) print(i) # Sabemos quantas vezes deve ser repetido