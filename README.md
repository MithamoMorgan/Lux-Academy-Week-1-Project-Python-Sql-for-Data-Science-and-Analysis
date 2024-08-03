## Overview
This is the first project of the Lux Academy ft. Data Science East Africa 5-Week Data Career Boot Camp.It involves SQL and python for Data Science and analysis.
In the project the aim is to try to answer questions given as the week one assignment.
## Tools Used
* Python:This is the programming language that was employed in this project as required.
* Jupyter Notebook:This is the development environment used to execute python code.
* Libraries:Pandas for data manipulation and analysis and Numpy for numerical computing.
* Database:SQL Server, which was used to perform data storage,manipulation and retrieval.
## Questions
### Part a:
1. Find all records where the weather was exactly clear.</br>
2. Find the number of times the wind speed was exactly 4 km/hr.</br>
3. Check if there are any NULL values present in the dataset.</br>
4. Rename the column "Weather" to "Weather_Condition."</br>
5. What is the mean visibility of the dataset?</br>
6. Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.</br>
7. What is the mean value of each column for each weather condition?</br>
8. Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.</br>
9. Find the number of weather conditions that include snow.</br>
### Part b: 
1.Move this CSV into a database of your choice and use SQL to answer the questions above.</br>
## Answers
* I found all records where the weather was exactly clear.</br>
* The number of times the wind speed was exactly 4 Km/hr was 474.</br>
* The data set does not contain any column where there are null values.</br>
* I renamed the column "Weather" to "Weather_Condition."</br>
* The mean visibility of the dataset is:27.6644 Km.</br>
* The number of records where the wind speed is greater than 24 Km/hr and visibility is equal to 25Km is 308 records.</br>
* The mean value for each column are shown in the table below

| Column | Mean Value |
| ------ | ---------- |
| Temp_C | 8.798144   |
| Dew Point Temp_C| 2.555294 |
| Rel Hum_% | 67.431694 |
| Wind Speed_km/h | 14.945469 |
| Visibility_km | 27.664447 |
| Press_kPa | 101.051623 |

* I retrieved all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.</br>
* The number of weather conditions that include snow was 583.</br>

NB:Here is the [python code](https://github.com/MorganTheAnalyst/Lux-Academy-Week-1-Project-Python-Sql-for-Data-Science-and-Analysis/blob/master/Weather_Analysis.ipynb) and
  [SQL code](https://github.com/MorganTheAnalyst/Lux-Academy-Week-1-Project-Python-Sql-for-Data-Science-and-Analysis/blob/master/Weather_data_SQLQuery.sql) used to answer the questions.
