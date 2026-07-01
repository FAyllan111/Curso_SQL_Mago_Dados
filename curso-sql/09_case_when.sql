-- intervalos: 
-- 0 a 500 -> ponei
-- 501 a 1000 -> cavalo rebaixado
-- 1001 a 5000 -> mago aprendiz
-- 5001 a 10000 -> mago mestre
-- 10001 -> mago supremo

-- ele e tipo o if/else das linguagens de programaçao
-- case when condicao then resultado condicao

-- OBS: um case gera APENAS UMA COLUNA, CADA CASE E PARA FORMATAR APENAS UMA COLUNA
-- mas pode comparar colunas diferentes e condicoes diferentes, mas o resultado gera apenas uma coluna nova

-- nao precisa colocar o and para duas condicoes pois ele ignora o restante e pode usar o else no final


SELECT  idCliente,
        QtdePontos,

        CASE
             WHEN QtdePontos <=500 THEN 'Ponei'
             --WHEN QtdePontos >500 and QtdePontos <= 1000 THEN 'Cavalo Rebaixado'
             WHEN QtdePontos <=5000 THEN 'Mago Aprendiz'
             WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
             --WHEN QtdePontos > 10000 THEN 'Mago Supremo' pode usar o else e ele e opcional 
             ELSE 'Mago Supremo' 
        END AS NomeGrupo,

-- criar uma coluna para ver se e ponei ou nao e se e mago ou nao

        CASE
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END as flPonei,

        CASE
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END as flMago

FROM clientes

--filtrar todos os magos

WHERE flMago = 1

ORDER BY QtdePontos DESC;


-- criar uma coluna para ver se e ponei ou nao

