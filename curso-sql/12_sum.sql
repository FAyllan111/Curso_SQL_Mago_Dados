
--FUNÇOES DE AGREGACAO
--agregacao de soma sum() 
--espreme a taberla,de diferentres maneiras, somando,contando,tirando media

--SELECT SUM(qtdePontos)

--FROM transacoes

--WHERE DtCriacao >= '2025-07-01'
--AND DtCriacao < '2025-08-01'
--and QtdePontos > 0
--;

--colocar em colunas diferentes separadas

SELECT IdTransacao,
        SUM(QtdePontos),
        SUM(CASE  
            WHEN QtdePontos > 0 THEN QtdePontos
            END) AS qtdPontosPositivos,

        SUM(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS qtdPontosNegativos, 
        
        --QTD TRANSICOES NEGATIVAS, aqui o zero faz diferença
        COUNT(CASE
            WHEN QtdePontos<0 THEN QtdePontos
            --ELSE 0
            END) AS qtdTransicoesNegativas
        

FROM transacoes
WHERE DtCriacao >='2025-07-01'
AND DtCriacao <'2025-08-01';

--juntando em uma estatistica somo o case

--FAZENDO A MEDIA DE PONTOS DOS USUARIOS

SELECT ROUND(AVG(QtdePontos),2)AS mediaCarteira,
        1. * SUM(QtdePontos)/COUNT(IdCliente) as mediaCarteiraManual,
        --FORMATAR PARA FLOAT -sqlite 1.* 
        --minimo e maximo
        MIN(QtdePontos) AS minCarteira,
        MAX(QtdePontos) AS maxCarteira,
        --somar email e twitch
        SUM(flTwitch),
        SUM(flEmail)

FROM clientes;