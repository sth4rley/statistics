# Gráficos de pontos
x <- c(2.5, 3, 4.2, 3.5, 5, 2, 1.8, 6)
y <- c(5, 5.5, 6, 5.3, 6, 4, 3.2, 8)
plot(x, y, main = "Gráfico de Pontos", xlab = "Eixo X", ylab = "Eixo Y")

# Gráficos de barra e pizza
turno <- c("A", "B", "A", "A", "C", "B", "A", "B", "C", "A", "A", "B", "A", "A", "B", "C")
barra <- table(turno)
barplot(barra, main = "Turno de trabalho dos funcionários da empresa X", horiz = TRUE)
pie(barra, main = "Turno de trabalho dos funcionários da empresa X")

# Histograma
tempo <- c(12, 13, 11, 10, 12, 15, 16, 14, 11, 10, 15, 15, 17, 15, 11, 10, 16)
hist(tempo, main = "Histograma do Tempo", xlab = "Tempo", ylab = "Frequência", col = "lightgreen")

# Boxplot
boxplot(tempo, col = "orange", main = "Boxplot do Tempo")

# Exemplo com múltiplos boxplots
bairro1 <- c(122, 100, 98, 95, 88, 111, 123, 99, 80, 135, 85, 92, 105)
bairro2 <- c(91, 90, 81, 78, 100, 75, 87, 76, 101, 110, 99, 83, 97)
bairro3 <- c(150, 125, 133, 140, 138, 120, 108, 160, 164, 144, 155, 129, 115)
par(mfrow = c(1, 3))  # Cria uma janela com 1 linha e 3 colunas para os gráficos
boxplot(bairro1, col = 'purple', main = "Boxplot Bairro 1")
boxplot(bairro2, col = 'lightgreen', main = "Boxplot Bairro 2")
boxplot(bairro3, col = 'orange', main = "Boxplot Bairro 3")

# Gráfico de dispersão com ajuste de linha de tendência
set.seed(123)  # Define a semente aleatória para reproducibilidade
x <- rnorm(100)  # Amostra de 100 números aleatórios seguindo distribuição normal
y <- 2 * x + rnorm(100)  # Amostra de y com relação linear a x e ruído
plot(x, y, main = "Gráfico de Dispersão com Linha de Tendência", xlab = "X", ylab = "Y")
abline(lm(y ~ x), col = "red")  # Adiciona a linha de regressão

# Gráfico de linha
tempo <- 1:10
valor1 <- c(10, 15, 8, 12, 20, 18, 14, 16, 19, 22)
valor2 <- c(5, 7, 3, 8, 12, 10, 6, 9, 11, 14)
plot(tempo, valor1, type = "l", col = "blue", lwd = 2, ylim = c(0, 25),
     main = "Gráfico de Linha", xlab = "Tempo", ylab = "Valor")
lines(tempo, valor2, col = "red", lty = 2, lwd = 2)
legend("topright", legend = c("Série 1", "Série 2"), col = c("blue", "red"),
       lty = 1:2, cex = 0.8)

# Gráfico de área
area <- c(10, 15, 8, 12, 20, 18, 14, 16, 19, 22)
plot(tempo, area, type = "n", main = "Gráfico de Área", xlab = "Tempo", ylab = "Área")
polygon(c(tempo, rev(tempo)), c(rep(0, 10), rev(area)), col = "lightblue")

# Scatterplot matrix
data <- data.frame(x1 = rnorm(100), x2 = rnorm(100), x3 = rnorm(100))
pairs(data, main = "Scatterplot Matrix")

# Gráfico de densidade
densidade <- density(tempo)
plot(densidade, main = "Gráfico de Densidade", xlab = "Tempo", ylab = "Densidade", col = "blue")

# Gráfico de setores
setores <- c(25, 35, 40)
labels <- c("Grupo A", "Grupo B", "Grupo C")
pie(setores, labels = labels, main = "Gráfico de Setores", col = c("red", "blue", "green"))
