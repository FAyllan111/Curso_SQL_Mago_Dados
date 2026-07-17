--Quantos clientes tem email cadastrado?
SELECT sum(flEmail) as 'modo_1'

FROM clientes;

SELECT COUNT(*) AS 'modo2'

FROM clientes
WHERE flEmail = 1;

--Qual cliente juntou mais pontos positivos em 2025-05?
SELECT idCliente,
        QtdePontos

FROM clientes
WHERE QtdePontos >0 and DtCriacao >= '2025-05-01' AND DtCriacao >= '2025-06-01'
ORDER BY QtdePontos DESC
LIMIT 1;

--Qual cliente fez mais transações no ano de 2024?
SELECT  idCliente,
        COUNT(IdCliente) as 'qtTransacoes'

FROM transacoes
GROUP BY idCliente
ORDER BY qtTransacoes DESC
LIMIT 1;

--Quantos produtos são de rpg?
SELECT DescCategoriaProduto,
        COUNT(*)

FROM produtos
WHERE DescCategoriaProduto = 'rpg';

--Qual o valor médio de pontos positivos por dia?

--SELECT AVG(qtdePontos),

--WHERE qtdePontos > 0
--FROM transacoes
--GROUP BY DtCriacao;

--Qual dia da semana quem mais pedidos em 2025?


--Qual o produto mais transacionado?
SELECT IdProduto,
        count(idTransacaoProduto) as qtdTransacoes


FROM transacao_produto
ORDER BY qtdTransacoes DESC;
--Qual o produto com mais pontos transacionados?

SELECT IdProduto,
        SUM(QtdeProduto * vlProduto)  as qtdPontos

FROM transacao_produto
ORDER BY qtdPontos;
