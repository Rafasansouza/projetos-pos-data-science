####################################################
#                                                  #  
# Módulo 5 - Pacotes e funções                     #
#                                                  #
# Vídeo 02 - Funções para string                   #
#                                                  #
####################################################

# Frase hipotetica 
frase <- "Eu sempre fui pobre, mas hoje"

# Extrai a palavra da posicao 15 ate a 19
substr(x = frase, start = 15, stop = 19)

# Copia o verbo "fui" para objeto
verbo <- substr(x = frase, start = 11, stop = 13)

# Exibe conteúdo
verbo

# Divide a frase em letras
strsplit(x = frase, split = "")

# Junta as palavras separando por ", "
paste("Primeiro", "segundo", "terceiro.", sep = ", ")

# Converte para maiusculo
toupper(x = frase)

# Converte para minúsculo
tolower(x = frase)

# Retorna a quantidade de caracteres
nchar(x = frase)

# Retorna qual elemento que possui o texto
grep(pattern = "fui", x = frase)

# Retorna se um termo está presente na string
grepl(pattern = "fui", x = frase)

# Substitui a palavra "pobre" por "rico"
sub(pattern = "pobre", replacement = "rico", x = frase)