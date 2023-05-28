-- Databricks notebook source
-- SELECIONE TODAS AS COLUNAS (*) DA TABELA silver.pizza_query.pedido
SELECT *
FROM silver.pizza_query.pedido

-- E TODOS QUE SELECIONARAM KETCHUP NO DISTRITO FEDERAL
WHERE flKetchup = TRUE
AND descUF = 'Distrito Federal'
