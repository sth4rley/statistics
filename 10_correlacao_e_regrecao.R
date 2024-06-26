# Regressão Linear Simples
# A regressão linear simples busca estabelecer uma equação matemática, geralmente uma reta, para descrever a relação entre duas variáveis. No R, utilizamos a função lm() para realizar esse cálculo, obtendo os coeficientes de intercepto e inclinação, além de outras métricas de ajuste do modelo.
# Exemplo de regressão linear simples:
x <- c(120, 135, 160, 200)
y <- c(10, 16, 18, 24)
data <- data.frame(x, y)
# Ajuste do modelo de regressão linear
regressao <- lm(y ~ x, data)
# Exibir os coeficientes da regressão
summary(regressao)
# Valores preditos e resíduos
regressao$fitted.values
regressao$residuals
# Coeficientes da regressão
regressao$coefficients
# Gráfico de dispersão com reta de regressão
plot(x, y, main = "Gráfico de dispersão com reta de regressão")
abline(regressao)


# Coeficiente de Correlação
# O coeficiente de correlação (r) mede o grau de associação linear entre duas variáveis. Ele varia de -1 (correlação negativa perfeita) a 1 (correlação positiva perfeita). No R, calculamos usando a função cor().
# Exemplo de cálculo do coeficiente de correlação
x <- c(3, 6, 8, 15, 20)
y <- c(26, 20, 17, 9, 4)
cor(x, y)

# Coeficiente de Determinação
# O coeficiente de determinação (R²) expressa a proporção da variância da variável dependente (Y) que é explicada pela variável independente (X). Ele varia de 0 a 1, onde 1 indica que toda a variação é explicada pelo modelo.
# Exemplo de cálculo do coeficiente de determinação
cor(x, y)^2


# Regressão Linear Múltipla
x1 <- c(100, 50, 100, 100, 50, 80, 75, 65, 90, 90)
x2 <- c(4, 3, 4, 2, 2, 2, 3, 4, 3, 2)
y <- c(9.3, 4.8, 8.9, 6.5, 4.2, 6.2, 7.4, 6.0, 7.6, 6.1)
regre <- lm(y ~ x1 + x2)
regre
anova(regre)  # Análise de variância para verificar a significância dos coeficientes
summary(regre)
residuals(regre)
xf1 <- data.frame(x1 = c(94, 82, 45), x2 = c(1, 2.5, 4.5))
predict(regre, xf1)


# Exercícios:

# 8.6.3
# Semanas de experiência (x)
x <- c(15, 41, 58, 18, 37, 52, 28, 24, 45, 33)
# Número de entrevistas (y)
y <- c(4, 9, 12, 6, 8, 10, 6, 5, 10, 7)

# a) Equação de regressão
regressao <- lm(y ~ x)  # Regressão linear (linear model)
regressao
# Y^ = 1.6222 + x * 0.1732
# Interpretação: 

# b) Coeficiente de correlação
cor(x, y)
# Positivo

# c) Diagrama de dispersão
plot(x, y)

# d) Coeficiente de determinação
summary(regressao)
# 0.9397
# 93.97% das variações do número de entrevistas (y) são explicadas pelas semanas de experiência (x) através da função.

# Exercícios de regressão linear múltipla

# 8.6.8
y <- c(193, 230, 172, 91, 113, 125)  # Desgaste do mancal
x1 <- c(1.6, 15.5, 22.0, 43.0, 33.0, 40.0)  # Viscosidade do óleo
x2 <- c(851, 816, 1058, 1201, 1357, 1115)  # Carga

# a)
regre <- lm(y ~ x1 + x2)
regre
# Y^ = 350.9943 - 1.2720 * x1 - 0.1539 * x2
# Interpretação: A cada unidade de aumento na viscosidade do óleo, o desgaste do mancal diminui em 1.2720, mantendo a carga constante.

# b) 
anova(regre)
# x1 é significativo, a viscosidade do óleo influencia no desgaste do mancal.
# x2 não é significativo

# c)
xf1 <- data.frame(x1 = 25, x2 = 1000)
predict(regre, xf1)
# Valor previsto para Y^ = 165.2902  


# 8.6.9

y <- c(240, 236, 290, 274, 301, 316, 300, 296, 267, 276, 288, 261)  # Potência elétrica consumida
x1 <- c(25, 31, 45, 60, 65, 72, 80, 84, 75, 60, 50, 38)  # Temperatura média ambiente
x2 <- c(24, 21, 24, 25, 25, 26, 25, 25, 24, 25, 25, 23)  # Número de dias no mês
x3 <- c(91, 90, 88, 87, 91, 94, 87, 86, 88, 91, 90, 89)  # Pureza média do produto
x4 <- c(100, 95, 110, 88, 94, 99, 97, 96, 110, 105, 100, 98)  # Toneladas do produto produzido

regre <- lm(y ~ x1 + x2 + x3 + x4)
regre

# a)
# Y^ = -102.71324 + 0.60537 * x1 + 8.92364 * x2 + 1.43746 * x3 + 0.01361 * x4

# Interpretação: Quanto maior a temperatura ambiente (x1), a potência elétrica consumida (y) aumenta em 0.60537, considerando o número de dias no mês (x2) constante, a pureza média do produto (x3) constante e as toneladas do produto produzido (x4) constante.

# b)
anova(regre)
# Conclusão: 
# x1 é significativa -> a temperatura influencia na potência elétrica consumida
# x2 é significativa -> o número de dias no mês influencia na potência elétrica consumida
# x3 não é significativa
# x4 não é significativa
