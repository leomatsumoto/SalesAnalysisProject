SELECT
	c.[CustomerKey] AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] AS [First Name]
      --,[MiddleName]
      ,c.[LastName] AS [Last Name]
	  ,c.FirstName + ' ' + c.LastName AS [Full Name] -- concatenate first and last name to make full name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END  AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS [Date First Purchase]
      --,[CommuteDistance]
	  ,g.city AS [Customer City]
	  ,g.[EnglishCountryRegionName] AS [Customer Country]
	  ,g.[SalesTerritoryKey] AS [Sales Region]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c -- declale nickname for table when doing a join
	LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey -- the only info pulled from g is city
  ORDER BY CustomerKey ASC	
