####################################################
#                                                  #  
# Módulo 4 - Estruturas condicionais e laços       #
#                                                  #
# Vídeo 03 - While                                 #
#                                                  #
####################################################
# A estrutura while realiza um teste lógico no início do loop, 
# e cada vez que esse teste retorna o valor verdadeiro, 
# os comandos associados ao laço são executados.

# Somar todos os números múltiplos de 5 entre 10 e 100.
soma<-0
i<-10
while(i<=100){ # Teste lógico, se for TRUE os comando são executados
  soma<-soma+i
  i<-i+5
}
print(soma)

somas_parciais<-NULL
soma<-0
i<-10
while(i<=100){ # Teste lógico, se for TRUE os comando são executados
  soma<-soma+i
  somas_parciais<-c(somas_parciais,soma)
  i<-i+5
}
somas_parciais

x <- 1
while(x <= 10) { # Teste lógico, se for TRUE os comando são executados
  print(x)
  x <- x + 1
}