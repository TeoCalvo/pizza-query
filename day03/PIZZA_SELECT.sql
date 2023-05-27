-- Databricks notebook source
select
*
from silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descItem,
count(*) as qtdPedido
FROM silver.pizza_query.item_pedido
WHERE descTipoItem = 'borda'

GROUP BY descItem
ORDER BY qtdPedido DESC
LIMIT 1

-- COMMAND ----------

SELECT descItem,
count(*) as qtdPedido
FROM silver.pizza_query.item_pedido
WHERE descTipoItem = 'massa'

GROUP BY descItem
ORDER BY qtdPedido DESC
LIMIT 1

-- COMMAND ----------

SELECT descItem,
count(*) as qtdPedido
FROM silver.pizza_query.item_pedido
WHERE descTipoItem LIKE '%ingrediente%'

GROUP BY descItem
ORDER BY qtdPedido DESC
LIMIT 5

-- COMMAND ----------

SELECT descItem,
count(*) as qtdPedido
FROM silver.pizza_query.item_pedido
WHERE descTipoItem LIKE '%queijo%'

GROUP BY descItem
ORDER BY qtdPedido DESC
LIMIT 1

-- COMMAND ----------

SELECT descItem,
count(*) as qtdPedido
FROM silver.pizza_query.item_pedido
WHERE descTipoItem = 'bebida'

GROUP BY descItem
ORDER BY qtdPedido DESC
LIMIT 1

-- COMMAND ----------

--Descobrindo a pizza perfeita
  SELECT
  *
  FROM(

  (SELECT descItem,
  count(*) as qtdPedido
  FROM silver.pizza_query.item_pedido
  WHERE descTipoItem = 'borda'

  GROUP BY descItem
  ORDER BY qtdPedido DESC
  LIMIT 1)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem = 'massa'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)
    
    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem LIKE '%ingrediente%'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 5)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem LIKE '%queijo%'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem = 'bebida'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)
  ) AS t1

  LEFT JOIN silver.pizza_query.produto AS t2
  ON t1.descItem = t2.descItem

-- COMMAND ----------

--Descobrindo a pizza perfeita
  SELECT
  sum(vlPreco)
  FROM(

  (SELECT descItem,
  count(*) as qtdPedido
  FROM silver.pizza_query.item_pedido
  WHERE descTipoItem = 'borda'

  GROUP BY descItem
  ORDER BY qtdPedido DESC
  LIMIT 1)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem = 'massa'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)
    
    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem LIKE '%ingrediente%'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 5)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem LIKE '%queijo%'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)

    UNION ALL
    (SELECT descItem,
    count(*) as qtdPedido
    FROM silver.pizza_query.item_pedido
    WHERE descTipoItem = 'bebida'

    GROUP BY descItem
    ORDER BY qtdPedido DESC
    LIMIT 1)
  ) AS t1

  LEFT JOIN silver.pizza_query.produto AS t2
  ON t1.descItem = t2.descItem

-- COMMAND ----------


