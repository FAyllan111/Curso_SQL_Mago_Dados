-- tamanho da tabela por numero de linhas count()
--e a mesma coisa do * e 1, muda da engine para engine, no caso do 1 cria uma coluna nova e conta as linhas dessa nova coluna, verifica valores nao nulos, usa o * onde tem metadados e ja verifica neles sem verificar a tabela toda (mais performatico)


SELECT 
        count(*),
        count(1)

FROM clientes;