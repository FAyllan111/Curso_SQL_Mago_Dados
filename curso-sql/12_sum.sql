--agregacao de soma sum()

SELECT SUM(qtdePontos)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

;