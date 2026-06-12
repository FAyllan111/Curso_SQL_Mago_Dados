--Lista de transações com apenas 1 ponto;

SELECT idTransacao,
        QtdePontos

FROM transacoes

WHERE QtdePontos = 1

LIMIT 1;

--Lista de pedidos realizados no fim de semana;

SELECT IdTransacao,
        DtCriacao,
        strftime('%w',datetime(substr(DtCriacao,1,19))) AS diaSemana

FROM transacoes

--WHERE diaSemana  = '0' OR DiaSemana = '6'
--tem bancos que nao aceitam o alias no where 
WHERE strftime('%w',datetime(substr(DtCriacao,1,19))) IN ('0','6')

LIMIT 3;



--Lista de clientes com 0 (zero) pontos;

SELECT IdTransacao,
        idCliente,
        qtdePontos
FROM transacoes
    

WHERE qtdePontos =0;


--Lista de clientes com 100 a 200 pontos (inclusive ambos);

SELECT IdTransacao,
        idCliente,
        qtdePontos

FROM transacoes

WHERE qtdePontos >= 100 AND qtdePontos <=200
--WHERE qtdePontos BETWEEN 100 AND 200
LIMIT 1;

--Lista de produtos com nome que começa com “Venda de”;

SELECT  DescNomeProduto,
        DescCategoriaProduto

FROM produtos

WHERE DescNomeProduto LIKE 'Venda de%'

LIMIT 1;

--Lista de produtos com nome que termina com “Lover”;
SELECT *

FROM produtos 

WHERE DescNomeProduto LIKE '%Lover';

--Lista de produtos que são “chapéu”;
SELECT * 
FROM produtos

WHERE DescCategoriaProduto = 'chapeu'

LIMIT 5;
--Lista de transações com o produto “Resgatar Ponei”;

SELECT idTransacaoProduto,
        IdProduto
        

FROM transacao_produto

WHERE IdProduto =15

LIMIT 3;
--Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500] exercicio nivel mais alto
SELECT *

FROM transacao_produto;