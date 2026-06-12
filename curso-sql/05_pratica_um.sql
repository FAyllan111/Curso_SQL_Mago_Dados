--selecionar todos os clientes com email cadastrado
SELECT *  

FROM clientes

WHERE flEmail != 0;

--selecionar todos as transações de 50 pontos
SELECT * 

FROM transacoes

WHERE QtdePontos = 50;

--selecionar clientes com mais de 500 pontos 


SELECT idCliente,
        qtdePontos

FROM clientes

WHERE qtdePontos > 500;

--procura produtos com o 'churn' no nome

--Churn_5pp
--Churn_2pp
-- Churn_10pp
SELECT * 

FROM produtos

--usando o OR:
--WHERE DescNomeProduto ='Churn_5pp' 
--OR DescNomeProduto ='Churn_2pp'
--OR DescNomeProduto ='Churn_10pp';

--ou usando o IN numa lista:

--WHERE DescNomeProduto IN ('Churn_5pp','Churn_2pp','Churn_10pp');

-- filtros com strings parecidos, listas infinitas ou registros que contenham LIKE + %,OBS: problema que ele é muito custoso na memoria para comparar 

--WHERE DescNomeProduto LIKE 'churn%';

--melhor forma e escrever essa query, menos custosa de memoria e desempenho no banco e tempo de processamento

WHERE DescCategoriaProduto ='churn_model';



