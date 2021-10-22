!pip install sqlalchemy==1.3.9
!pip install ibm_db_sa
!pip install ipython-sql
%sql ibm_db_sa://vbj07116:iQRIn7qUYxf4stP9@764264db-9824-4b7c-82df-40d1b13897c2.bs2io90l08kqb1od8lcg.databases.appdomain.cloud:32536/BLUDB?security=SSL
import pandas
chicago_socioeconomic_data = pandas.read_csv('https://data.cityofchicago.org/resource/jcxq-k9xf.csv')
%sql --persist chicago_socioeconomic_data
%sql SELECT * FROM chicago_socioeconomic_data limit 5;
%sql SELECT COUNT(*) as rows FROM chicago_socioeconomic_data;
%sql SELECT COUNT(*) FROM chicago_socioeconomic_data where hardship_index > 50.00;
%sql SELECT MAX(hardship_index) from chiAcago_socioeconomic_data;
%sql SELECT community_area_name FROM chicago_socioeconomic_data where hardship_index = (SELECT MAX(hardship_index) from chicago_socioeconomic_data)
%sql SELECT community_area_name FROM chicago_socioeconomic_data where per_capita_income_ > 60000
import matplotlib.pyplot as plt
%matplotlib inline
import seaborn as sns
plot=sns.jointplot(x='per_capita_income_', y='percent_aged_16_unemployed ,data=chicago_socioeconomic_data)
