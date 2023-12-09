/* to display the entire data*/
select * from emp_attrition


/*total employee count.
there are total 1470 employees*/
select sum(EmployeeCount) from emp_attrition



/*find out attrition division*/
select sum(EmployeeCount),attrition from emp_attrition
group by 2 
/*  1233 -> NO
    237  -> YES
*/



/* Age analysis-let's find out which particular age attrition is high (20-25,26-32,33-40,40+) */
select sum(EmployeeCount),
case when age between 20 and 25 then "20-25" when age between 26 and 32 then "26-32" when age between 33 and 40 then "33-40" else "40+" end age_group
from emp_attrition
where attrition = 'yes'
group by 2
/* 85 --> 26-32
   62 --> 40+
   56 --> 33-40
   34 --> 20-25

 -> most of people leaving organisation age between 26-32 
*/



/*find out attrition by department*/
 select sum(EmployeeCount),department from emp_attrition
 where attrition ="yes"
 group by department
 /*
   133 --> Research & Development
   92  --> Sales
   12  --> Human Resources
*/



/* attrition by education (1-below college, 2-college, 3-bachelor, 4-master, 5-doctor) */
select sum(EmployeeCount),
case when education=1 then 'below college' when education=2 then 'college' when education=3 then 'bachelor' when education=4 then 'master' else 'doctor' end edu_group
from emp_attrition
where attrition='yes'
group by 2
/* 58 -> master
   44 -> college
   31 -> below college
   99 -> bachelor
   5  -> doctor
*/





/* attrition by environment satisfaction(1-low, 2-medium, 3-high, 4-highly satisfied)*/
select sum(EmployeeCount),EnvironmentSatisfication
from emp_attrition
where attrition='yes'
group by 2
/* 72 -> 1
   43 -> 2
   62 -> 3
   60 -> 4
*/



/*attrition by business travel*/
select sum(EmployeeCount), BusinessTravel
from emp_attrition
where attrition='yes'
group by 2
/* 156 -> Travel_Rarely
   69  -> Travel_Frequently
   12  -> Non-Travel
*/


/* insights as of now
   -> employee age between 26-32 are leaving the organisation
   -> Research and development department are leaving organisation
   -> 41.8% people having bachelor degree left organisation
   -> 72 employee not satisfied with environment loaction left organisation
   -> 156 employee travelling rarely left organisation
*/ 


