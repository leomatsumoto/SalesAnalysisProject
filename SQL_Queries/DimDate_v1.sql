-- This query will select and rename the relevant info from DimDate
	-- Fisrt step is to comment all columns that would not be useful for the dashboard
		-- Once we know what data we're using, rename it
	-- Filter year >= 2020, since we just need the info from the past 2 years (DB info ends in 2022)
	

SELECT 
       [DateKey]
      ,[FullDateAlternateKey] AS Date 
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] AS Month
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >= 2020
  --ORDER BY CalendarYear DESC -- check last year on query

