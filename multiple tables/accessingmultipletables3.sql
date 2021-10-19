select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs 
where JOB_IDENT IN 
(select JOB_ID from employees where YEAR(B_DATE)>1976 );