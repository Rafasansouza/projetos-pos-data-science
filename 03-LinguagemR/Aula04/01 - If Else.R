####################################################
#                                                  #  
# Módulo 4 - Estruturas condicionais e laços       #
#                                                  #
# Vídeo 01 - If Else                               #
#                                                  #
####################################################
# Usamos uma estrutura condicioinal para tomar uma decisão 
# de acordo com o resultado de uma condição (teste lógico), 
# e então executar um bloco de códigos que depende do resultado desse teste.

x <- 10
if (x == 10) {
  res <- "Número igual a 10"
  print(res)
}

y <- 20
if (y == 20) {
  res <- "Número igual a 20"
} else {
  res <- "Número diferente de 20"
}
print(res)

z <- 30
res <- if (z == 30) "Igual" else "Diferente"
print(res)

x <- 30
if (x == 30) {
  res <- "Número igual a 30"
} else if (x > 30) {
  res <- "Número maior que 30"
} else {
  res <- "Número menor que 30"
}
print(res)