# Intervalo de Confiança

# O intervalo de confiança é uma faixa de valores na qual acredita-se que um parâmetro de interesse (como a média ou a proporção) da população esteja contido com uma determinada probabilidade. É uma medida de incerteza que indica quão precisamente podemos estimar o parâmetro a partir de uma amostra.

# Exemplo de cálculo do intervalo de confiança:

library(TeachingDemos)

# Amostra de dados
amostra <- c(14, 4, 12, 9, 15, 13)

# Intervalo de confiança para a média quando o desvio padrão é conhecido
# Aqui, sd=4 indica que o desvio padrão populacional é conhecido como 4
z.test(amostra, alternative = "two.sided", sd = 4, conf.level = 0.95)$conf.int

# Intervalo de confiança para a média quando o desvio padrão é desconhecido
t.test(amostra, alternative = "two.sided", conf.level = 0.95)$conf.int
