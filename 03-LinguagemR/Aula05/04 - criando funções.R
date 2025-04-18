####################################################
#                                                  #  
# Módulo 5 - Pacotes e funções                     #
#                                                  #
# Vídeo 04 - Criando funções                       #
#                                                  #
####################################################

# Criando uma função
ola.mundo <- function(){
  writeLines("Olá mundo")
}  
ola.mundo()

# Criando uma função com argumentos
ola.mundo <- function(texto){
  writeLines(texto)
}
ola.mundo('Seja bem vindo')

# Função que compara 2 argumentos
maior <- function(a,b){
  if(a>b)
    return(a)
  else
    return(b)
} 
maior(5, 6)

# Função que compara 3 argumentos
maior_de_3 <- function(a,b,c){
  if(a>b && a>c){
    return(a)
  } else {
    if(b>c)
      return(b)
    else
      return(c)
  }
}
maior_de_3(4,5,3)