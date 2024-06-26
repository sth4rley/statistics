# Distribuição Exponencial
# Sintaxe da distribuição exponencial: dexp(x,rate), pexp(q,rate), qexp(p,rate), rexp(obs,rate)
# Onde:
# x – vetor contendo os quantis
# obs – número de observações
# rate – parâmetro da distribuição

# Exemplo: Sabe-se que um componente eletrônico tem vida útil representada por uma distribuição exponencial, com taxa de falha de 10 falhas por hora (λ=10). O tempo médio de falha é 10. Suponha que desejamos determinar a probabilidade de um componente falhar antes do tempo de vida médio.
dexp(10, 0.3)

# Distribuição Normal
# Sintaxe da distribuição normal: dnorm(x, mean, sd), pnorm(q, mean, sd), qnorm(p, mean, sd), rnorm(obs,mean,sd)
# Onde:
# x – vetor contendo quantis
# mean – média da distribuição
# sd – desvio padrão da distribuição
# obs – número de observações

# Exemplo: A força de tensão de uma ponte metálica é normalmente distribuída com média de 40 lb e desvio padrão de 8 lb. Se 50000 pontes são produzidas, 
# (a) quantas não atenderão à especificação limite máxima de 34 lb?
pnorm(34, 40, 8)
x <- pnorm(34, 40, 8)
50000 * x

# (b) quantas terão força de tensão superior a 48 lb?
1 - pnorm(48, 40, 8)
y <- 1 - pnorm(48, 40, 8)
50000 * y



# EXERCICIOS:

# Distribuição exponencial
# (a) pexp(x, lambda)
pexp(300, 1/800)
# Output: 0.6305573

# (b) 1 - pexp(3, 1/4)
1 - pexp(3, 1/4)
# Output: 0.01831564

# Página 71, exercícios 3 e 4

# 3)
# Média = 500 horas -> esperança = 500
# P(x > 500)
1 - pexp(500, 1/500)

# 4) Variável Aleatória Uniforme
# (a) Temperatura média (esperança de uma VA uniforme)
# Esperança (a + b) / 2
(150 + 300) / 2

# (b) P(T < 200)
punif(200, 150, 300)

# (c) P(T > 250)
1 - punif(250, 150, 300)


# Distribuição Uniforme -> fdp constante

# Exemplo

# f(h) = {1/20, 50 <= h <= 70, 0 caso contrário}

# (a) P(h < 65)
punif(65, 50, 70)

# (b) P(h > 60)
1 - punif(60, 50, 70)

# (c) P(55 < h < 65)
punif(65, 50, 70) - punif(55, 50, 70)


# Exercícios, a seguir temos a seguinte fdp:

# f(x) = {2e^-2x se x >= 0}
# f(x) = 0, caso contrário

# (c) P(0.2 < x < 0.8)
integrate(fx, 0.2, 0.8)

# (d) V(x)
integrate(fxx, 0, Inf) # E[X]
integrate(fxx2, 0, Inf) # E[X^2]


# Gráficos de Distribuição Normal

# Probabilidade de X < 34
pnorm(34, 100, 8)

# Probabilidade de X > 48
1 - pnorm(48, 100, 8)

# Encontrar o z tal que P(Z > z) = 0.10
qnorm(0.9, mean = 0, sd = 1)

# Encontrar z tal que P(Z > z) = 0.05
qnorm(0.95, mean = 0, sd = 1)

# Encontrar z tal que P(Z < z) = 0.10
qnorm(0.10, mean = 0, sd = 1)

# Encontrar o X do item C) do exercício 5.9.8, página 71, P(X > x) = 0.10
qnorm(0.90, mean = 480, sd = 50)


# Exercício 5.9.9
# Média: 99.8
# DP: 0.1

# (a) P(x > 100)
1 - pnorm(100, 99.8, 0.1)

# (b) P(99.05 < x < 100.05)
pnorm(100.05, 99.8, 0.1) - pnorm(99.95, 99.8, 0.1)

# Exercício 5.9.10

# Encontrar z tal que P(Z < z) = 0.10
qnorm(0.10, mean = 30, sd = 4)

# Superior a 34
(1 - pnorm(34, 30, 4)) * 50