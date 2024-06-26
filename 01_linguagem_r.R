# R é uma linguagem e ambiente para computação estatística e gráficos.

# R permite manipulação de dados, cálculos e exibição gráfica, oferecendo operadores para arranjos,
# matrizes, análise de dados e gráficos, com uma linguagem simples que inclui condições, loops,
# funções recursivas e entrada/saída de dados.

# Tipos de dados
numero <- 100  # numérico
string <- "Letras"  # caracteres
logico <- 1 > 5  # lógico
complexo <- 5 + 2i  # complexo

# Tipos de objetos: vetores, matrizes, arrays, data frames

# Vetores
V <- c(1, 2, 3, 4, 5)
V <- seq(n1, n2)  # Sequência de n1 a n2
V <- rep(n1, r)  # Vetor com r repetições de n1
V <- seq(x, y, z)  # Sequência de x a y, pulando z unidades
V <- gl(i, r)  # Vetor com i níveis, cada um repetido r vezes

# Matrizes e Arrays
M <- matrix(V, nrow = 2, ncol = 5)  # Matriz 2x5 com dados de V
A <- array(dados, dim = c(n, m, p))  # Array com dimensões n, m, p

# Data Frames
DF <- data.frame(X = letters[1:5], Y = 5:1)

# Operações básicas
A + B  # Soma
A - B  # Subtração
A * B  # Produto
A / B  # Divisão
A^2  # Potenciação
A %*% B  # Produto matricial
t(A)  # Transposta de A
solve(A)  # Inversa de A
solve(A, b)  # Resolver sistema linear Ax = b
det(A)  # Determinante de A
eigen(A)  # Autovalores e autovetores de A
sum(diag(A))  # Traço de A

# Funções básicas
ls()  # Lista de variáveis
str(x)  # Informações sobre x
rm(A, ...)  # Remover objetos
library(nome.do.pacote)  # Carregar pacote
class(x)  # Tipo de objeto
factor(A)  # Transformar em fator
edit(x)  # Editar objeto
length(x)  # Número de elementos
function(...)  # Criar função

# Funções matemáticas
abs(x)  # Valor absoluto
log(x, base = y)  # Logaritmo de x na base y
exp(x)  # Exponencial de x
sin(x), cos(x), tan(x)  # Funções trigonométricas
round(x, digits = n)  # Arredondar x com n casas decimais
ceiling(x), floor(x)  # Arredondar para cima e para baixo
choose(n, k)  # Combinação de n escolhendo k
factorial(x)  # Fatorial de x
sqrt(x)  # Raiz quadrada de x
sum(x), prod(x)  # Soma e produto de elementos
max(x), min(x), range(x)  # Máximo, mínimo e intervalo

# Entrada de dados externos
planilha <- read.table("arquivo.csv", header = TRUE, sep = ",", dec = ".")
