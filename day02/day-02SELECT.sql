-- Databricks notebook source
SELECT
*
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descItem,
       vlPreco,
       21+21 AS vl42
FROM silver.pizza_query.produto

-- COMMAND ----------


