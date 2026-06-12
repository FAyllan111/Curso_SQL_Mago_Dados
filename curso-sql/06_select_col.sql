--criar coluna com 10 pontos para cada pessoa
--seleciona as colunas antigas e coloca uma coluna nova, nao alterou apenas selecionou e apenas exibe o que foi feito

--nome para coluna/renomear => AS

--consegue aplicar funções, ex função do dia do ano,data atual do excel, as funções vão depender da engine 

SELECT idCliente,
        qtdePontos,
        qtdePontos+10 AS qtdePontosPlus10,
        qtdePontos *2 AS qtdePontosDouble,
        qtdePontos /6 AS qtdePontosDiv6,
        DtCriacao,
        datetime(substr(DtCriacao,1,19)) AS DtCriacaoNova,-- peega uma parte da string nova coluna substring (parte da informação)
        datetime(DtCriacao) AS DtCriacaoFormat,
        strftime('%w',datetime(substr(DtCriacao,1,19))) AS DiaSemana

FROM clientes

LIMIT 17
