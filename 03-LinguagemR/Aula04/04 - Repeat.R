####################################################
#                                                  #  
# Módulo 4 - Estruturas condicionais e laços       #
#                                                  #
# Vídeo 04 - Repeat                                #
#                                                  #
####################################################
# Usando o repeat, o R repetirá o código a seguir sem condições. 
# Com isso, precisamos de mais uma função para mostrar ao programa 
# quando deve parar de repetir o código.

# Criando e inicializando as variáveis
i <- 1
soma <- 0

# Bloco repeat, vai executar enquanto i for menor ou igual a 10
repeat{
  if (i <= 10) { # Condição para determinar quando sair do laço
    soma <- soma + i
    i <- i + 1
  } else {
    break
  }
}
print(soma)

minha.var <- -10
repeat { # REPETIR até ...
  minha.var <- minha.var+1
  if(minha.var>100) { # Condição para determinar quando sair do laço
    break # PARAR
  }
}
minha.var

y = 1
i = 1
repeat{
  i = i + 1
  y[i] = i
  if(i==100) # Condição para determinar quando sair do laço
    break
}
y