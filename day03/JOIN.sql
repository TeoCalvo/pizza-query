-- Databricks notebook source
select
t1.*,
t2.vlPreco
from silver.pizza_query.item_pedido as t1
left join silver.pizza_query.produto as t2 
on t1.descItem = t2.descItem

-- COMMAND ----------

select
t1.idPedido,
sum(t2.vlPreco) as vl_pedido
from silver.pizza_query.item_pedido as t1

left join silver.pizza_query.produto as t2 
on t1.descItem = t2.descItem

where t1.descTipoItem<> 'bebida'

GROUP by t1.idPedido

-- COMMAND ----------


