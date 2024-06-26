library(samplingbook)

## População infinita

# Estimando a média (variável quantitativa)
n1 <- sample.size.mean(e = 50, s = 325, N = Inf, level = 0.95)
n1

# Estimando proporção
n2 <- sample.size.prop(e = 0.05, p = 0.50, N = Inf, level = 0.90)
n2

## População finita

# Estimando média
n3 <- sample.size.mean(e = 50, s = 325, N = 900, level = 0.95)
n3

# Estimando proporção
n4 <- sample.size.prop(e = 0.05, p = 0.50, N = 2000, level = 0.90)
n4
