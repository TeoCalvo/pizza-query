-- Databricks notebook source
SELECT 'OLÁ MUNDO!'

-- COMMAND ----------

SELECT *                          -- selecione todas as colunas
FROM silver.pizza_query.pedido    -- da tabela silver.pizza_query.pedido

-- COMMAND ----------

select * 
from silver.pizza_query.item_pedido ip
where ip.idPedido = 1
