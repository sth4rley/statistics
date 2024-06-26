# introducao ao planejamento e analise de experimentos

# Experimento Inteiramente ao Acaso (DIC)
# Exemplo 1: Análise de Variância (ANOVA) com Teste de Tukey
resist <- c(7, 8, 15, 11, 9, 10, 12, 17, 13, 18, 19, 15, 14, 18, 19, 17, 16, 18, 19, 25, 22, 23, 18, 20)
trat <- c("5%", "5%", "5%", "5%", "5%", "5%", "10%", "10%", "10%", "10%", "10%", "10%", "15%", "15%", "15%", "15%", "15%", "15%", "20%", "20%", "20%", "20%", "20%", "20%")
# ANOVA para analisar efeito do tratamento na resistência
exper <- aov(resist ~ trat)  # aov -> análise de variância
summary(exper)  # Sumário da ANOVA
# Teste de Tukey para comparar médias entre os tratamentos
teste.tukey <- TukeyHSD(exper, 'trat', ord = T, conf.level = 0.99)
teste.tukey  # Resultado do Teste de Tukey

# Exemplo 2: ANOVA com Teste de Tukey
resistencia <- c(3129, 3000, 2865, 2890, 3200, 3300, 2975, 3150, 2800, 2900, 2985, 3050, 2600, 2700, 2600, 2765)
tecnica <- c('1', '1', '1', '1', '2', '2', '2', '2', '3', '3', '3', '3', '4', '4', '4', '4')
# ANOVA para analisar efeito da técnica na resistência
analise <- aov(resistencia ~ tecnica)
summary(analise)  # Sumário da ANOVA
# Teste de Tukey para comparar médias entre as técnicas
teste.tukey <- TukeyHSD(analise, 'tecnica', ord = T, conf.level = 0.9)
teste.tukey  # Resultado do Teste de Tukey


# Experimento Aleatorizado com Blocos Completos
# Exemplo 3: Experimento de Bloco Completo
indice <- c(7.62, 8.00, 7.93, 8.14, 8.15, 7.87, 7.76, 7.73, 7.74, 7.17, 7.57, 7.80, 7.46, 7.68, 7.21)
dados <- data.frame(Trat = factor(rep(1:5, each = 3)), Blocos = factor(rep(1:3, 5)), resp = indice)
# ANOVA para analisar efeito do tratamento e do bloco na variável resposta
anova.bloco <- aov(resp ~ Trat + Blocos, data = dados)
summary(anova.bloco)  # Sumário da ANOVA
# Teste de Tukey para comparar médias entre os tratamentos
tukey.bloco <- TukeyHSD(anova.bloco, "Trat", conf.level = 0.95)
tukey.bloco  # Resultado do Teste de Tukey
plot(tukey.bloco, col = "blue")  # Gráfico do Teste de Tukey
