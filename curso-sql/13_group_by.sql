--agrupa os dados por certas caracteristicas

SELECT IdProduto,
        COUNT(*)


FROM transacao_produto

GROUP BY IdProduto

LIMIT 1;

--cliente com mais pontos no mes de junho
--muda a granularidade de transaçoes para cliente

SELECT IdCliente,
        SUM(QtdePontos) AS carteiraPontos,
        COUNT(QtdePontos) AS contagemTransacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao <= '2025-08-01'

GROUP BY IdCliente

--pegar apenas os maiores que 4mil 
--having e o where do group by
HAVING carteiraPontos >= 4800

ORDER BY carteiraPontos DESC;

