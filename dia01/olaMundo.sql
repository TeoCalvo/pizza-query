-- Databricks notebook source
SELECT 'OLÁ MUNDO!' ola_mundo, 21*2 produto

-- COMMAND ----------

SELECT *                          -- selecione todas as colunas
FROM silver.pizza_query.pedido    -- da tabela silver.pizza_query.pedido

-- COMMAND ----------

SELECT *                          -- selecione todas as colunas
FROM silver.pizza_query.pedido    -- da tabela silver.pizza_query.pedido
where descUF='Rio de Janeiro' and flKetchup=0

-- COMMAND ----------


