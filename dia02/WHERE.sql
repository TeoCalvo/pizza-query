-- Databricks notebook source
SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE
AND descUF = 'Rio de Janeiro'

-- COMMAND ----------


