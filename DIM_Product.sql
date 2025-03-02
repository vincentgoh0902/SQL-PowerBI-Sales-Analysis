-- Clean DimProduct table

SELECT 
	p.ProductKey,
    p.ProductAlternateKey AS ProductID,
    -- ,[ProductSubcategoryKey]
    -- ,[WeightUnitMeasureCode]
    -- ,[SizeUnitMeasureCode]
    p.EnglishProductName AS [Product Name],
	ps.EnglishProductSubCategoryName AS [Sub Category],
	pc.EnglishProductCategoryName AS [Product Category],
    -- ,[SpanishProductName]
    -- ,[FrenchProductName]
    -- ,[StandardCost]
    -- ,[FinishedGoodsFlag]
    p.Color AS [Product Colour],
    -- ,[SafetyStockLevel]
    -- ,[ReorderPoint]
    -- ,[ListPrice]
    p.Size AS [Product Size],
    -- ,[SizeRange]
    -- ,[Weight]
    -- ,[DaysToManufacture]
    p.ProductLine AS [ProductLine],
    -- ,[DealerPrice]
    -- ,[Class]
    -- ,[Style]
    p.ModelName AS [Product Model Name],
    -- ,[LargePhoto]
    p.EnglishDescription AS [Product Description],
    -- ,[FrenchDescription]
    -- ,[ChineseDescription]
    -- ,[ArabicDescription]
    -- ,[HebrewDescription]
    -- ,[ThaiDescription]
    -- ,[GermanDescription]
    -- ,[JapaneseDescription]
    -- ,[TurkishDescription]
    -- ,[StartDate]
    -- ,[EndDate]
    ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM dbo.DimProduct AS p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductSubcategoryKey = pc.ProductCategoryKey
  ORDER BY
    p.ProductKey ASC
