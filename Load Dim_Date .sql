

DECLARE @CurrentDate DATE = '1/1/2000'
DECLARE @EndDate DATE = '1/1/2030'

WHILE @CurrentDate < @EndDate
BEGIN
	INSERT INTO [dbo].[Dim_Date] (
		[Date_Key],
		[Full_Date],
		[Calendar_Year],
		[Calendar_Quarter],
		[Month_Num],
		[Month_Name] 
		)
	select Date_Key = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
	Full_Date = @CurrentDate,
	Calendar_Year = YEAR(@CurrentDate),
	Calendar_Quarter = DATEPART(q, @CurrentDate),
	Month_Num = month(@CurrentDate),
	Month_Name =  DATENAME(mm, @CurrentDate)

	SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
end 









