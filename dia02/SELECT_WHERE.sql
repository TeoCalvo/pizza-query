-- Databricks notebook source
SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT null


-- COMMAND ----------


SELECT descUF, 
       count(*), txtRecado
FROM silver.pizza_query.pedido
GROUP BY 1, 3


-- COMMAND ----------

SELECT descUF, 
       count(*) as qtdePedidos
FROM silver.pizza_query.pedido
GROUP BY descUF
ORDER BY qtdePedidos

-- COMMAND ----------

SELECT descUF,
       count(*) as qtdePedidos
FROM silver.pizza_query.pedido
GROUP BY descUF
ORDER BY qtdePedidos DESC

-- COMMAND ----------

SELECT descUF, 
       count(*) as qtdePedidos
FROM silver.pizza_query.pedido
GROUP BY descUF
ORDER BY qtdePedidos DESC
LIMIT 5

-- COMMAND ----------


SELECT count(*)
FROM silver.pizza_query.pedido
WHERE descUF in ('Espírito Santo', 'Rio de Janeiro')


-- COMMAND ----------

SELECT descUF, 
       count(*) as qtdePedidos
FROM silver.pizza_query.pedido
WHERE descUF != 'São Paulo'
GROUP BY descUF
ORDER BY qtdePedidos DESC
LIMIT 5


-- COMMAND ----------


SELECT descUF, 
       count(*) as qtdePedidos
FROM silver.pizza_query.pedido
WHERE descUF != 'São Paulo'
GROUP BY descUF
HAVING qtdePedidos >= 75
ORDER BY qtdePedidos DESC
LIMIT 5

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE 'suco%'

-- COMMAND ----------

SELECT descUF,
       flKetchup,
       count(*)
FROM silver.pizza_query.pedido
WHERE descUF = 'Espírito Santo'
GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup

-- COMMAND ----------

SELECT * 
FROM silver.pizza_query.pedido


-- COMMAND ----------

SELECT flKetchup, txtRecado
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE
AND descUF = 'Espírito Santo'
