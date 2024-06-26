# Calculando Probabilidade

# Probabilidade de cair o número 2 em um dado
N <- 6  # Espaço amostral (total de possíveis resultados)
n <- 1  # Evento: probabilidade de cair o número 2
p <- n / N  # Probabilidade = Evento / Espaço amostral
p

# Probabilidade de cair o número 2 ou 5
n1 <- 1  # Evento 1: probabilidade de cair o número 2
n2 <- 1  # Evento 2: probabilidade de cair o número 5
p <- (n1 + n2) / N  # Probabilidade = (Evento 1 + Evento 2) / Espaço amostral
p


# Probabilidade Condicional
# Probabilidade de A dado que B ocorreu: P(A|B) = P(A e B) / P(B)

# Exemplo: 
# P(A): Probabilidade de sacar uma carta de espadas de um baralho (52 cartas, 13 espadas)
# P(B): Probabilidade de sacar uma carta figura (J, Q, K), 12 figuras no total

P_A <- 13 / 52  # Probabilidade de sacar uma espada
P_B <- 12 / 52  # Probabilidade de sacar uma figura

# P(A e B): Probabilidade de sacar uma carta que seja espada e figura
# Há 3 figuras em cada naipe, então 3 espadas figuras
P_A_and_B <- 3 / 52

# P(A|B): Probabilidade de sacar uma espada dado que a carta é uma figura
P_A_given_B <- P_A_and_B / P_B
P_A_given_B


# Teorema de Bayes
# P(A|B) = (P(B|A) * P(A)) / P(B)
# P(B|A): Probabilidade de B dado A
# P(A): Probabilidade de A
# P(B): Probabilidade de B

# Exemplo:
# P(A): Probabilidade de ter uma doença (1%)
# P(B): Probabilidade de um teste ser positivo
# P(B|A): Probabilidade de o teste ser positivo dado que a pessoa tem a doença (99% de sensibilidade)
# P(B|~A): Probabilidade de o teste ser positivo dado que a pessoa não tem a doença (5% de falso positivo)

P_A <- 0.01  # Probabilidade de ter a doença
P_not_A <- 1 - P_A  # Probabilidade de não ter a doença

P_B_given_A <- 0.99  # Probabilidade de teste positivo dado a doença
P_B_given_not_A <- 0.05  # Probabilidade de teste positivo dado ausência da doença

# P(B): Probabilidade total de teste positivo
P_B <- (P_B_given_A * P_A) + (P_B_given_not_A * P_not_A)

# P(A|B): Probabilidade de ter a doença dado o teste positivo
P_A_given_B <- (P_B_given_A * P_A) / P_B
P_A_given_B