# Medidas de tendência central

# Média aritmética
x <- c(4, 6, 8, 15, 20)
mean(x)

# Mediana (Md)
v1 <- c(1, 3, 4, 5, 1, 0, 0, 6, 6)  # Número ímpar de elementos
v2 <- c(4, 2, 6, 8, 9, 5, 2, 6)  # Número par de elementos
median(v1)  # Calcula a mediana de v1
median(v2)  # Calcula a mediana de v2

# Moda (Mo)
x <- c(1, 2, 3, 3, 3, 3, 4, 5, 5)
table_x <- table(x)
subset(table_x, table_x == max(table_x))  # Calcula a moda de x

# Medidas de localização
x <- c(20, 30, 40, 50)
quantile(x, 0.20)  # Calcula o percentil 20 de x
quantile(x, c(0.10, 0.20, 0.30))  # Calcula os percentis 10, 20 e 30 de x
summary(x)  # Calcula os quartis mínimo, 1º, mediana, média, 3º e máximo
quantile(x)  # Calcula os quartis mínimo, 1º, mediana, 3º e máximo


# Medidas de variabilidade
x <- c(1, 2, 3, 4, 5)
var(x)  # Calcula a variância de x
sd(x)  # Calcula o desvio padrão de x
cv1 <- (sd(x) / mean(x)) * 100 # Calcula o coeficiente de variação de x

# Exercícios:

# Q1
dados <- c(3.43, 3.45, 3.43, 3.52, 3.50, 3.49, 3.36, 3.70, 3.55, 3.60, 3.56,
           3.48, 3.41, 3.38, 3.80, 3.38, 3.40, 3.42, 3.71, 3.62, 3.48, 3.50,
           3.55, 3.47, 3.35, 3.78, 3.70, 3.66, 3.58, 3.57)
var(dados)

# Q2
dados <- c(4.2, 4.7, 4.7, 5.0, 3.8, 3.6, 3.0, 5.1, 3.1, 3.8, 4.8, 4.0, 5.2, 4.3, 2.8, 2.0, 2.8, 3.3, 4.8,
           5.0, 4.8, 3.9, 5.3, 5.0, 4.7, 3.6, 3.8, 3.0, 3.2, 4.2, 4.5, 4.7, 4.9, 4.0, 4.1, 4.4, 5.0)
mean(dados)
median(dados)
table(dados)
cv <- sd(dados) / mean(dados) * 100

# Q5
dados <- c(160, 161, 160, 170, 167, 163, 172, 172, 173, 177,
           178, 182, 181, 181, 186, 185, 194, 197, 199, 203,
           205, 203, 206, 206, 211, 209, 208, 214, 218, 225 )

# a) A variável é quantitativa discreta

# b) Mediana e interpretação do percentil 67
median(dados)
quantile(dados, 0.67)

# c) Desvio padrão
sd(dados)

# d) Substituir o maior valor por 300 e refazer os cálculos
dados[dados == max(dados)] <- 300

# a) A variável em estudo continua sendo quantitativa discreta.
# b) Mediana e percentil 67 não foram alterados
median(dados)
quantile(dados, 0.67)

# c) O desvio padrão foi alterado devido ao novo valor máximo
sd(dados)