-- Databricks notebook source
SELECT 'olá mundo!',
       21 + 21 as vl42

-- COMMAND ----------

-- SELECIONE TODAS AS COLUNAS (*) DA TABELA silver.pizza_query.pedido  / CATALAGO + DATABASE + TABELA

SELECT *                         
FROM silver.pizza_query.pedido     

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT  descItem, 
        vlPreco,
        21 + 21 AS vl42
FROM silver.pizza_query.produto
