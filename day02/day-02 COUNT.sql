-- Databricks notebook source
SELECT
count(*),
count(idPedido)
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descUF,
count(*) AS qtdePedidos
FROM silver.pizza_query.pedido
WHERE descUF !='São Paulo'
GROUP BY descUF --AGRUPAR
HAVING qtdePedidos >=75 --FLTRAR
ORDER BY qtdePedidos --ORDENAR
LIMIT 5 --LIMITAR

-- COMMAND ----------

SELECT descUF, flKetchup,
count(*)
FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup --AGRUPAR

ORDER BY descUF, flKetchup --ORDENAR

-- COMMAND ----------


