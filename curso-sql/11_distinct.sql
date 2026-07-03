--registro unico da linha e nao da coluna tras valores distintos para a combinaçao no caso de duas linhas pega a combinaçao linha 1 e linha 2 
-- tem que informar pelo o que e distinto 

--SELECT DISTINCT flTwitch, flEmail,flBlueSky

--selecionar clientes distintos da na mesma por conta de ser uma chave primaria

--SELECT COUNT(DISTINCT idCliente)

--FROM clientes;

--quantidade de transacoes de julho de 2025, quantidade de linhas


SELECT COUNT(*),
        COUNT(DISTINCT IdTransacao),
        COUNT(DISTINCT idCliente)
        
--clientes

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01';