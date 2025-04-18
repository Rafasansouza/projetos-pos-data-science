####################################################
#                                                  #  
# Módulo 5 - Pacotes e funções                     #
#                                                  #
# Vídeo 01 - Pacotes                               #
#                                                  #
####################################################
# Pacotes (em inglês packages) em R são bibliotecas contendo funções e dados, 
# que são importantes para alguma finalidade específica.

# A lista de pacotes encontra-se disponível no CRAN (Comprehensive R Archive Network)
## Número atual de pacotes no CRAN
nrow(available.packages())

## Verificar pacotes carregados
search()

## Verificar pacotes instalados
library()

# Instalando o pacote
if (!require(vegan)) install.packages(("vegan"))
# Carregando o pacote
library("vegan")

## Diretórios de intalação dos pacotes
.libPaths()

require(vegan) # ... também carrega o pacote

## Descrição de um pacote
packageDescription("vegan")

## Desinstalar um pacote
remove.packages("vegan")

## Descarregar um pacote
detach("package:vegan", unload = TRUE)

## Atualização dos pacotes
update.packages(checkBuilt = TRUE, ask = FALSE)