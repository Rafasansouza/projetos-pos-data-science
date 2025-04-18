################################################
# Módulo 7 - Limpeza                           #
#                                              #  
# Vídeo 02 - Removendo caracteres indesejados  #
################################################
# Instalando o pacote
if (!require(stringr)) install.packages(("stringr"))
# Carregando o pacote
library("stringr")

# Criando string
string = "a37935fguiegfkeu#$^VYVJ&(*&TFYJ"

# Mostrar a string original
print(string)

# Remove os caracteres não alfabéticos da string
print(str_replace_all(string, "[^[:alnum:]]", ""))

# Criando string
string = "a37935fguiegfkeu#$^VYVJ&(*&TFYJ"

# Mostrar a string original
print(string)

# Remove os caracteres de pontuação
print(str_replace_all(string, "[[:punct:]]", ""))

# Lista de arquivos
listaArquivos <- c("/Arquivo/DadosCliente.csv", "/Arquivo/DadosFornecedor.csv")

# Extrai a partir de "Dados"
str_extract(
  string = listaArquivos, 
  pattern = "Dados.*"
)

# Grandes metropolis  
grandesMetropolis <- c("São Pauloxx", "New York", "Sapiranga", "Londres")
# Remove caracteres
str_remove(
  string = grandesMetropolis, 
  pattern = "xx"
)

# Grandes metropolis  
grandesMetropolis <- c("São Paulo", "New York", "Sapiranga", "Londres")
# Substitui nome da cidade
str_replace(
  string = grandesMetropolis, 
  pattern = "Sapiranga", 
  replacement = "Araricá" # Troca o nome
)

# Matriculas
matriculas <- c("BB1015XX", "BB1111XX", "BX1900XX")
# Extrai conteudo a partir do terceiro caracter
str_sub(
  string = matriculas,
  start = 3 # Inicia na posição 3
)

# Matriculas
matriculas <- c("BB1015XX", "BB1111XX", "BX1900XX")
# Extrai conteudo a partir do terceiro caracter
str_sub(
  string = matriculas,
  start = 3, # Inicia na posição 3
  end = 6    # Termina na posição 6
)