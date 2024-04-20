USE DB_AED



--SELECT NObeyesdad TIPO_OBESIDADE, FAVC, CALC, SCC, SMOKE, NCP, COUNT(*) QTD INTO #TEMP FROM [dbo].[ObesityDataSet_corrigido]
--WHERE Gender = 'Female'
--GROUP BY NObeyesdad, FAVC, CALC, SCC, SMOKE, NCP, Gender

--SELECT * FROM #TEMP
--WHERE TIPO_OBESIDADE = 'OBESITY_TYPE_II'


--SELECT Gender, SMOKE, COUNT(*) QTD FROM [dbo].[ObesityDataSet]
--GROUP BY Gender, SMOKE

--SELECT *, ROUND(cast(Weight as float) / (cast(Height as float) * cast(height as float)), 2) AS IMC FROM [ObesityDataSet]

--begin tran
--UPDATE [ObesityDataSet] SET ID = ROUND(cast(Weight as float) / (cast(Height as float) * cast(height as float)), 2)
--commit

--select * from [ObesityDataSet]
--WHERE NObeyesdad = 'OVERWEIGHT_LEVEL_I'
--order by CAST(IMC AS FLOAT) ASC

DROP TABLE IF EXISTS #TEMP

select NObeyesdad, COUNT(*) QTD  INTO #TEMP from [ObesityDataSet]
GROUP BY NObeyesdad 

SELECT * FROM #TEMP
UNION
SELECT 'SOMA', SUM(QTD) FROM #TEMP












