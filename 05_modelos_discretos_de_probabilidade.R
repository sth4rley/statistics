# Distribuição Binomial
# Sintaxe da distribuição binomial: dbinom(x,n,p), pbinom(x,n,p), qbinom(prob,n,p), rbinom(obs,n,p)
# Onde:
# x – vetor contendo número de sucessos em n ensaios
# prob – vetor contendo as probabilidades em n ensaios
# n – número de ensaios
# obs – número de observações
# p – probabilidade de sucesso

# Exemplo: Na manufatura de certo artigo, é sabido que um entre dez artigos é defeituoso. Qual a probabilidade que uma amostra casual de tamanho 4 contenha:
# a) Nenhum defeituoso
dbinom(0, 4, 0.10)
# b) Exatamente dois defeituosos
dbinom(2, 4, 0.10)
# c) Não mais que dois defeituosos
pbinom(2, 4, 0.10)


# Distribuição de Poisson
# Sintaxe da distribuição de Poisson: dpois(x,lambda), ppois(x,lambda), qpois(x,lambda), rpois(obs,lamda)
# Onde:
# x – vetor contendo número de ocorrências
# obs – número de observação
# lambda – número médio de ocorrências

# Exemplo: A inspeção de qualidade afirma que os rolos de fita isolante apresentam em média, uma emenda a cada 50 metros. Calcule a probabilidade de que
# a) num rolo de 50 m você encontre 2 emendas
dpois(2, 1)
# b) num rolo de 125 m você encontre no máximo duas emendas
ppois(2, 2.5)


# Distribuição Hipergeométrica
# Sintaxe da distribuição hipergeométrica: dhyper(x,m,n,k), phyper(q,m,n,k), qhyper(p,m,n,k), rhyper(obs,m,n,k)
# Onde:
# x – vetor contendo o número de elementos com característica A extraídos de uma urna com elementos A e B
# obs – número de observações
# m – número de elementos com característica A
# n – número de elementos com característica B
# k – número de elementos da amostra retirada

# Exemplo: Dos 16 caminhões de entrega de uma loja de departamentos, cinco emitem excesso de poluentes. Selecionados aleatoriamente oito dos 16 caminhões:
# a) probabilidade dessa amostra incluir no máximo 2 caminhões que emitem excesso de poluentes
phyper(2, 5, 11, 8)
# b) probabilidade dessa amostra incluir 4 ou 5 caminhões que emitem excesso de poluentes
dhyper(4, 5, 11, 8) + dhyper(5, 5, 11, 8)


# Distribuição Geométrica
# Sintaxe da distribuição geométrica: dgeom(x,prob), pgeom(q,prob), qgeom(p,prob), rgeom(obs,prob)
# Onde:
# x – vetor contendo número de falhas ocorridas em uma sequência de Bernoulli
# prob – probabilidade de sucesso em cada tentativa
# obs – número de observações

# Exemplo: Um banco de sangue necessita de sangue do tipo O negativo. Suponha que a probabilidade de uma pessoa ter esse sangue é 0,10. Doadores permanentes chegam ao hemocentro para fazer doações rotineiras. Calcule as probabilidades de que o primeiro doador com sangue do tipo O negativo seja:
# a) o segundo a chegar
dgeom(1, 0.10)
# b) o sétimo
dgeom(6, 0.10)
