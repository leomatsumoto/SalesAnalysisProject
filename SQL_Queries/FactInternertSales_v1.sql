SELECT [ProductKey]
      ,[OrderDateKey]
	  ,LEFT(OrderDateKey, 4) AS [Order Year] -- may be relevant later
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM 
	[AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE 
	LEFT(OrderDateKey, 4) >= 2020 -- Fetch year info from OrderDateKey`s first 4 leftmost characters and make it >=2020 so que can anlyse the data from 2020-2022
  ORDER BY 
	OrderDateKey ASC

