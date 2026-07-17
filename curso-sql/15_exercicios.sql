--1.Quantos clientes tem email cadastrado?
SELECT sum(flEmail) as 'modo_1'

FROM clientes;

SELECT COUNT(*) AS 'modo2'

FROM clientes

WHERE flEmail = 1;

--2.Qual cliente juntou mais pontos positivos em 2025-05?
SELECT idCliente,
        SUM(QtdePontos) AS totalPontos

FROM transacoes

WHERE QtdePontos > 0 
AND DtCriacao >= '2025-05-01' 
AND DtCriacao < '2025-06-01'

GROUP BY idCliente

ORDER BY totalPontos DESC

LIMIT 1;

--3.Qual cliente fez mais transações no ano de 2024?
SELECT  idCliente,
        COUNT(IdCliente) as 'qtTransacoes'

FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY idCliente

ORDER BY qtTransacoes DESC

LIMIT 1;

--4.Quantos produtos são de rpg?
SELECT DescCategoriaProduto,
        COUNT(*)

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

--5.Qual o valor médio de pontos positivos por dia?

SELECT SUM(QtdePontos) AS totalPontos,
        COUNT( DISTINCT substr(DtCriacao,1,10)) AS qtdDias,
        SUM(QtdePontos)/COUNT( DISTINCT substr(DtCriacao,1,10)) AS medPontosDia

FROM transacoes

WHERE QtdePontos > 0;


--6.Qual dia da semana quem mais pedidos em 2025?

SELECT IdTransacao,
        strftime('%w',substr(DtCriacao,1,10)) as diaSemana,
        COUNT(DISTINCT IdTransacao) AS qtdTransacoes

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'

GROUP BY diaSemana
ORDER BY qtdTransacoes DESC
LIMIT 1;


--7.Qual o produto mais transacionado?
SELECT IdProduto,
        count(idTransacaoProduto) as qtdTransacoes


FROM transacao_produto

GROUP BY IdProduto

ORDER BY qtdTransacoes DESC

LIMIT 1;
--8.Qual o produto com mais pontos transacionados?

SELECT IdProduto,
        SUM(vlProduto)  as qtdPontos

FROM transacao_produto

GROUP BY IdProduto

ORDER BY qtdPontos DESC

LIMIT 1;
