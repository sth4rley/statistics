# Teste de Hipóteses

# O teste de hipóteses é uma técnica estatística usada para tomar decisões sobre uma população com base em uma amostra de dados. Envolve a formulação de uma hipótese nula (H0) e uma hipótese alternativa (H1), e a análise dos dados para determinar se há evidências suficientes para rejeitar H0 em favor de H1.

# Exemplos de testes de hipóteses:

library(TeachingDemos)

# Teste de hipótese para média com desvio padrão conhecido
amostra <- c(14.4, 12.9, 15, 13.7, 13.5)
z.test(amostra, alternative = "two.sided", mu = 12, sd = 2, conf.level = 0.95)

# Teste de hipótese para média com desvio padrão desconhecido
t.test(amostra, alternative = "two.sided", mu = 12, conf.level = 0.95)

# Teste de hipótese para diferença entre médias de duas amostras
catalisador1 <- c(40, 66, 58, 45)
catalisador2 <- c(30, 31, 32, 36)
t.test(catalisador1, catalisador2, alternative = "two.sided", var.equal = TRUE, conf.level = 0.95)

# Teste de hipótese para proporção
prop.test(6, 50, 0.4, alternative = "two.sided", conf.level = 0.95)

# Teste de hipótese para variância
x <- c(40, 66, 58, 45)
y <- c(30, 31, 32, 36)
var.test(x, y, ratio = 1, alternative = "two.sided", conf.level = 0.95)

# Teste do Qui-quadrado de independência
tabela <- matrix(c(5, 10, 15, 20), nrow = 2, byrow = TRUE)
chisq.test(tabela, conf.level = 0.95)

# Teste t pareado
antes <- c(120, 104, 93, 87, 85, 98, 102, 106, 88, 90)
depois <- c(116, 102, 90, 83, 86, 97, 98, 108, 82, 85)
t.test(antes, depois, alternative = 'greater', mu = 0, paired = TRUE, conf.level = 0.95)


# Exercicios:

# teste pareado
# uma unica amostra em 2 situacoes
# o mesmo grupo de individuos em 2 situacoes por exemplo

antes<-c(120,104,93,87,85,98,102,106,88,90)
depois<-c(116,102,90,83,86,97,98,108,82,85)

t.test(antes,depois,alternative='greater', mu=0, paired=TRUE, conf.level=0.95)
# precisamos passar o paired=TRUE, para que ele entenda que ele eh pareado
# se nao colocar ele considera como grupos diferentes

# teste para proporcao
prop.test(82,600, 0.05, alternative="greater", conf.leve=0.90)
# 82 qauntidade de elemntos com a caracteristica na amostra
# 600 a amostra
# a proporcao

#* alternative



# teste de comparaco de proporcoes
X<-c(253,196)
Y<-c(300,300)
prop.test(X,Y,alt="two.sided", conf.level=0.99)

# teste de comparacao de variancias
a<-c(10,12,11,10,9,10)
b<-c(6,7,7,6,9,8,6,8)
var.test(a,b,ratio=1, alternative="two.sided", conf.level=0.95)
# compara a razao igual a 1 (pois assim que comparamos se sao iguais)

# * teste de comparacao de medias, pode ser necessario utilizar o teste de comparacao de variancias


# QUI QUADRADO de independencia
# aqui nao tem dupla de hipoteses
# ou a primeira eh dependente ou indepentede

tipo1<-matrix(c(160,40,140,60,40,60), ncol=3) # "sao 3 colunas"

colnames(tipo1)<-c('Plano 1', "Plano 2", "Plano 3")
rownames(tipo1)<-c('Assalariados', "horistas")
tipo1

chisq.test(tipo1)

# Exercícios

# Exercício 7.21.6
X <- c(50, 43)  # incendiários
Y <- c(63, 44)  # fraude
prop.test(X, Y, alt = "greater", conf.level = 0.99)

# Exercício 7.21.10
prop.test(50 * 0.27, 50, 0.20, alternative = "greater", conf.level = 0.95)

# Exercício 7.21.12
cidadeA <- c(7, 3, 6, 6, 6, 8, 7, 4, 8, 3, 6, 5, 7, 9, 8, 7, 8, 1, 8, 5)
cidadeB <- c(6, 5, 7, 8, 8, 2, 6, 9, 7, 9, 9, 7, 9, 1, 9, 5, 7, 4, 8, 0, 6, 9, 7, 9, 8, 4, 9, 3, 9, 5)
var.test(cidadeA, cidadeB, ratio = 1, alternative = "two.sided", conf.level = 0.95)

# Exercício 15
# Teste t pareado
m1 <- c(1.2, 1.3, 1.5, 1.4, 1.7, 1.8, 1.4, 1.3)
m2 <- c(1.4, 1.7, 1.5, 1.3, 2.0, 2.1, 1.7, 1.6)
t.test(m1, m2, alternative = 'two.sided', mu = 0, paired = TRUE, conf.level = 0.99)

# Exercício 16
tipo1 <- matrix(c(41, 31, 15, 20, 11, 17, 12, 9, 16, 16, 14, 10), ncol = 4)

colnames(tipo1) <- c('A', 'B', 'C', 'D')
rownames(tipo1) <- c('1', '2', '3')
tipo1

chisq.test(tipo1)