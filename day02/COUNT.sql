-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC - Comandos - executados resultam em efeito persistente sobre dados e estruturads, ou controlam transações, conexões, sessões, etc.
-- MAGIC EX: SELECT, INSERT, UPDATE, DELETE, CREATE TABLE, GRANT, etc.
-- MAGIC
-- MAGIC - Cláusulas - componentes dos comandos. Em muitos casos, algumas são opcionais.
-- MAGIC Ex: FROM, WHERE, GORUP BY. 

-- COMMAND ----------

SELECT  count(*),        -- linhas não nulas
        count(1),        -- linhas não nulas da tabela, não tem diferença do count (*)
        count(idPedido)  -- linhas não nulas da coluna idPedido
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT null

-- COMMAND ----------

-- COM GROUP BY VAMOS RESUMIR EM ESTATÍSTICAS, SÓ QUE ESTATÍSTICAS POR AGRUPAMENTOS ALGUMA PARTIÇÃO
-- SELECT    - SELECIONANDO COLUNAS
-- FROM      - A PARTIR DA ONDE
-- WHERE     - APLICAR O FILTRO NO MOMENTO DE LEITURA DO DADOS
-- GROUP BY  - AGREGAR E CALCULAR ESTATÍSTICAS
-- HAVING    - FAZER UM FILTRO DESTE PROCESSAMENTO, NO MOMENTO QUE VOCÊ PROCESSOU E FEZ ESSA ESTATÍTICA PODE APLICAR UM FILTRO
-- ORDER BY  - ORDENAR O RESULTADO 
--LIMIT      - LIMITAR QUANTAS LINHAS O RESULTADO VAI TRAZER


SELECT  descUF,                                -- SELECIONE O descUF 
        count(*) AS qtdePedidos                -- CALCULANDO UMA CONTAGEM

FROM silver.pizza_query.pedido                 -- A PARTIR DA TABELA .pedido
 
WHERE descUF != 'São Paulo'                    -- AONDE O ESTADO NÃO SEJA O ESTADO DE SÃO PAULO
-- WHERE descUF = 'Rio Grande do Sul'

GROUP BY descUF                                -- AGRUPANDO POR ESTADO
HAVING qtdePedidos >= 75                       -- qtdePedidos MAIOR QUE 75 PEDIDOS

ORDER BY qtdePedidos DESC                      -- E ORDENANDO PELA qtdePedidos DE FORMA DESCENDENTE 

LIMIT 5                                        -- E ME TRÁS OS 6 PRIMEIROS

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE '%abacaxi%'

-- COMMAND ----------

SELECT  descUF,
        flKetchup,
        count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup

