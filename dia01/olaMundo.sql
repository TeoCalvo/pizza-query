-- Databricks notebook source
SELECT 'OLÁ MUNDO!'

-- COMMAND ----------

SELECT *                          -- selecione todas as colunas
FROM silver.pizza_query.pedido    -- da tabela silver.pizza_query.pedido



-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE pedido.descUF='Rio de Janeiro'

