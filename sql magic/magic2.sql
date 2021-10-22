!pip install sqlalchemy 
!pip install ibm_db_sa 
!pip install sqlalchemy==1.3.9
!pip install ibm_db_sa 
!pip install ipython-sql  
%load_ext sql
%sql ibm_db_sa://vbj07116:iQRIn7qUYxf4stP9@764264db-9824-4b7c-82df-40d1b13897c2.bs2io90l08kqb1od8lcg.databases.appdomain.cloud:32536/BLUDB?security=SSL
%sql select TABSCHEMA, TABNAME, CREATE_TIME from SYSCAT.TABLES where TABSCHEMA='vbj07116'
%sql select count(*) from SYSCAT.COLUMNS where TABNAME = 'SCHOOLS'
%sql select COLNAME, TYPENAME, LENGTH from SYSCAT.COLUMNS where TABNAME = 'SCHOOLS'
#%sql select COUNT(*) from SCHOOLS WHERE "Elementary_School, Middle_School, High_School" = 'ES'
%sql select MAX(safety_score) from schools
%sql select name_of_school from schools where \
safety_score= (select MAX(safety_score) from schools)
%sql select Name_of_School, Average_Student_Attendance from SCHOOLS \
order by Average_Student_Attendance desc nulls last  limit 10 
%sql select Name_of_School, Average_Student_Attendance from SCHOOLS \
order by Average_Student_Attendance nulls last limit 5 
%sql select Name_of_School, replace(Average_Student_Attendance, '%','') from SCHOOLS \
order by Average_Student_Attendance nulls last limit 5 
%sql select name_of_school , average_student_attendance from schools where average_student_attendance < '70%' \
order by average_student_attendance
%sql select Community_Area_Name, sum(college_enrollment) as total_enrollment from schools\
group by Community_Area_Name
%sql select Community_Area_Name, sum(college_enrollment) as total_enrollment from schools\
group by Community_Area_Name \
order by total_enrollment  nulls last limit 5
%sql select name_of_school, safety_score from schools order by safety_score nulls last limit 5
%sql select hardship_index from chicago_socioeconomic_data c, schools s where c.ca = s.community_area_number and college_enrollment = 4368
%sql select ca, community_area_name, hardship_index from chicago_socioeconomic_data \
where ca in \
( select community_area_number from schools order by college_enrollment desc limit 1 )