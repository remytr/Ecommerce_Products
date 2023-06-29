SELECT
  DISTINCT ProductSKU,
  ModelName,
  ProductSubcategoryKey,
  ProductColor,
  ProductSize,
  ProductCost,
  ProductPrice,
  Quantity,
  OrderDateKey,
  SUM(ProductPrice - ProductCost) AS Profit
FROM `prism-2023-c2.prism_analytics.Squiddle_Sales`
WHERE ProductSubcategoryKey >= 18 AND ProductSubcategoryKey <=24
GROUP BY ProductSKU, ModelName, ProductSubcategoryKey,ProductColor, ProductSize,ProductCost, ProductPrice, OrderDateKey, Quantity;