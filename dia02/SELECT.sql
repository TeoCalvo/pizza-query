-- Databricks notebook source
SELECT 'Olá Mundo!'

-- COMMAND ----------

SELECT * FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descItem,
        vlPreco
  FROM  silver.pizza_query.produto

-- COMMAND ----------

SELECT*
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE

-- COMMAND ----------

SELECT  count(*), 
        count(1),
        count(idPedido)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtdePedidos
FROM silver.pizza_query.pedido
WHERE descUF != 'São Paulo'
GROUP BY descUF
ORDER BY qtdePedidos DESC
LIMIT 5

-- COMMAND ----------


