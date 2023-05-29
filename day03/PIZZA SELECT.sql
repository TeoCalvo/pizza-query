-- Databricks notebook source
SELECT  descItem,
        count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'borda'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1


-- COMMAND ----------

SELECT  descItem,
        count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'massa'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1

-- COMMAND ----------

SELECT  descItem,
        count(*) AS qtdePedido

FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%queijo%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1

-- COMMAND ----------

SELECT  descItem,
        count(*) AS qtdePedido
        
FROM silver.pizza_query.item_pedido

WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 5

-- COMMAND ----------

SELECT  descItem,
        count(*) AS qtdePedido
         
FROM silver.pizza_query.item_pedido

WHERE descTipoItem = 'bebida'

GROUP BY descItem
ORDER BY qtdePedido DESC

LIMIT 1 

-- COMMAND ----------

SELECT sum(vlPreco)

FROM (

  (SELECT  descItem,
          count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido

  WHERE descTipoItem = 'borda'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

    UNION ALL

  (SELECT  descItem,
          count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido

  WHERE descTipoItem = 'massa'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

    UNION ALL

  (SELECT  descItem,
          count(*) AS qtdePedido

  FROM silver.pizza_query.item_pedido

  WHERE descTipoItem LIKE '%queijo%'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1)

    UNION ALL

  (SELECT  descItem,
          count(*) AS qtdePedido
          
  FROM silver.pizza_query.item_pedido

  WHERE descTipoItem LIKE '%ingrediente%'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 5)

    UNION ALL

  (SELECT  descItem,
          count(*) AS qtdePedido
          
  FROM silver.pizza_query.item_pedido

  WHERE descTipoItem = 'bebida'

  GROUP BY descItem
  ORDER BY qtdePedido DESC

  LIMIT 1 )
) AS t1

LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem
