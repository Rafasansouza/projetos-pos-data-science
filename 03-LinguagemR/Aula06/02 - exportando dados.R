####################################################
#                                                  #  
# Módulo 6 - Arquivos                              #
#                                                  #
# Vídeo 02 - Exportando dados                      #
#                                                  #
####################################################

# Pacote base write.table() 
# É a principal função que você irá usar para exportar seus dados do R. 
# Ela funciona para exportar arquivos em formato de texto simples (*.csv, *.txt) 

# O conjunto de dados contém medidas em centímetros do comprimento e 
# largura da sépala e pétala de três espécies da flor íris. 
# Esses dados já estão disponíveis no R, basta digitar iris no console.

# Conjunto de dados iris
data(iris)
str(iris)

# Mostra e muda o diretorio de trabalho
getwd()
setwd("d:/Users/eduardo.mendes/Desktop/Linguagem R/Aula06/Dados")

## Exportando o data frame
write.table(iris, file = "iris01.csv")
# Se você colocou o arquivo na sua pasta de trabalho, 
# ele deve estar visível por
dir(pattern = "csv")

write.table(iris, file = "iris02.csv", row.names = FALSE, sep = ";", dec = ",")
dir(pattern = "csv")

write.csv2(iris, file = "iris03.csv", row.names = FALSE)
dir(pattern = "csv")

# Mostra e muda o diretorio de trabalho
getwd()
setwd("d:/Users/eduardo.mendes/Desktop/Linguagem R/Aula06")

# vamos usar o mesmo arquivo
dir(pattern = "csv")
# ler o arquivo para o R para ter algo a exportar
dd <- read.table(file = "municipiosbrasil.csv", sep = "\t", header = T, dec = ".", na.strings = c("NULL", "NA", ""), as.is = TRUE)
str(dd) # diferentemente do objeto anterior, não há mais fatores

# filtrando apenas para municipios do Amazonas:
vl <- dd$Province %in% "Amazonas"
sum(vl) # quantos são?
# ou, desse jeito que é identico:
vl <- dd$Province == "Amazonas"
sum(vl)
dd.am <- dd[vl, ]
nrow(dd.am) == sum(vl) # deve ser verdadeiro, certo?

# salvando esses dados num novo arquivo com diferentes formatações:
# separado por tabulação e textos sem aspas e células NA sem nada
write.table(dd.am, file = "muni-am1.csv", sep = "\t", na = "", quote = FALSE)
# separado por tabulação e textos com aspas e células NA sem nada
write.table(dd.am, file = "muni-am2.csv", sep = "\t", na = "", quote = TRUE)

# separado por vírgula e textos com aspas e células NA com a palavra valor.ausente
write.table(dd.am, file = "muni-am3.csv", sep = ",", na = "valor.ausente", quote = TRUE)

# separado por vírgula e textos com aspas e células NA vazios e não adicona nomes das linhas como primeira coluna (row.names=FALSE). Pode deslocar a primeira linha na sua planilha SE você NAO USAR este argumento)
write.table(dd.am, file = "muni-am4.csv", sep = ",", na = "", quote = TRUE, row.names = FALSE)

# separado por tabulação e textos sem aspas e células NA vazias, sem nomes das linhas, e quebra de linha no formato do windows (eol = "\r\n")
write.table(dd.am, file = "muni-am5.csv", sep = ",", na = "", quote = TRUE, row.names = FALSE, eol = "\r\n")

# ABRA OS ARQUIVOS GERADOS NO SEU EDITOR DE TEXTO E COMPARE AS FORMATAÇÕES GERADAS


