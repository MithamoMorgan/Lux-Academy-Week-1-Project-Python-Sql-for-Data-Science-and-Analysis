-- Query all rows and columns in the data.
SELECT  *
FROM Weather_Data

-- Check column data types.
SELECT COLUMN_NAME,DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'weather_data'

--Change data types(Since all data types are varchar).

-- Changing 'Date Time' datatype to datetime.
ALTER TABLE weather_data
	ALTER COLUMN [Date Time] datetime

-- Changing 'Temp_C' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Temp_C] float

--Changing 'Dew Point Temp_c' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Dew Point Temp_C] float

----Changing 'Rel Hum_%' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Rel Hum_%] float

------Changing 'Wind Speed_km h' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Wind Speed_km h] float

------Changing 'Visibility_km' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Visibility_km] float

------Changing 'Press_kPa' datatype to float.
ALTER TABLE weather_data
	ALTER COLUMN [Press_kPa] float

-- Select the top 10 rows in the data.
SELECT TOP 10*
FROM weather_data

-- Select the bottom 10 rows in the data.
SELECT TOP 10*
FROM weather_data
ORDER BY [Date Time] DESC

-- Total number of rows and columns.

--rows
SELECT COUNT(*) AS Number_of_rows
FROM weather_data

--columns
SELECT COUNT(*) AS Number_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'weather_data'

--Q1:FInd all records where the weather was exactly clear.
SELECT *
FROM weather_data
WHERE [Weather] = 'Clear'

--Q2:Find the number of times the wind speed was exactly 4Km/hr.
SELECT COUNT(*)
FROM weather_data
WHERE [Wind Speed_km h] = 4

--Q3:Check if there are any Null values present in the dataset.
SELECT *
FROM weather_data
WHERE 'Date Time' IS NULL OR 'Date Time' = ''
	OR 'Temp_C' IS NULL OR 'Temp_C'  = ''
	OR 'Dew Point Temp_C' IS NULL OR 'Dew Point Temp_C' = ''
	OR 'Rel Hum_%' IS NULL OR 'Rel Hum_%' = ''
	OR 'Wind Speed_km h' IS NULL OR 'Wind Speed_km h' = ''
	OR 'Visibility_km' IS NULL OR 'Visibility_km' = ''
	OR 'Press_kPa' IS NULL OR 'Press_kPa' = ''
	OR 'Weather' IS NULL OR 'Weather' = ''

--Q4:Rename the column "Weather" to "Weather_Condition".
EXEC sp_rename 'weather_data.Weather','Weather_Condition'

--Q5:What is the mean visibility of the dataset?
--Rounding the mean to 4dp
SELECT ROUND(AVG(Visibility_km),4)AS mean_visibility
FROM weather_data

--Q6: Find the number of records where the wind speed is greater than 24Km/h and visibility is equal to 25km.
SELECT COUNT(*) AS Number_of_Records
FROM weather_data
WHERE [Wind Speed_km h] > 24 AND [Visibility_km] = 25

--Q7: What is the mean value of each column for each weather condition?
-- Rounding to 4dp
SELECT ROUND(AVG(Temp_C),4) AS avg_temp,
		ROUND(AVG([Dew Point Temp_C]),4) AS avg_dew_point_temp,
		ROUND(AVG([Rel Hum_%]),4) AS avg_humidity,
		ROUND(AVG([Wind Speed_km h]),4) AS avg_wind_speed,
		ROUND(AVG([Visibility_km]),4) AS avg_visibility,
		ROUND(AVG([Press_kPa]),4) AS avg_Press
FROM weather_data

--Q8:Find all instances where the weather is clear and the relative humidity is greater than 50,or
--  visibility is above 40.
SELECT *
FROM weather_data
WHERE [Weather_Condition] = 'Clear' AND
([Rel Hum_%] >50 OR [Visibility_km] > 40)

--Q9: Find the number of weather condition that include snow.
SELECT COUNT(*) AS Number_of_Snow_Conditions
FROM weather_data
WHERE [Weather_Condition] LIKE '%Snow%'