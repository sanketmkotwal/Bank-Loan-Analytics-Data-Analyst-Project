##### Bank Analytics ####

use project;
show  tables;
select * from bank_dashboard;

####KPI 1 (Total loan amount)
select sum(loan_amnt) as Total_Loan 
from bank_dashboard;

####KPI 2 (Total funded amount)
select sum(funded_amnt) as Total_funded 
from bank_dashboard;

####KPI 3 (Total no. of recoveries)
Select count(recoveries)as Total_recoveries
 from bank_dashboard;

####KPI 4 (yearwise loan amount)
select issued_yr as Year,round(avg(loan_amnt),2) as loan
 from bank_dashboard 
 group by issued_yr 
 order by issued_yr;

####KPI 5 (  Statewise average recovered interest)
select  addr_state as States,round(avg(total_rec_int),2) as Interest
 from bank_dashboard 
 group by addr_state 
 order by addr_state;

####KPI 6 (loan vs purpose)
select loan_amnt as loan ,purpose 
from bank_dashboard;

####KPI 7 (Grade/sub-gradewise revol_bal)
select grade,sub_grade,sum(revol_bal) 
from bank_dashboard 
group by grade,sub_grade 
order by grade;

####KPI 8 ( total amount funded verification status (fully paid)
select count(funded_amnt) as Fund_verification,loan_status as Fully_Paid
 from bank_dashboard 
 where loan_status="fully paid";

####KPI 9 (Home ownership vs annual income)
select home_ownership, sum(annual_inc) as Annual_income
from bank_dashboard 
group by home_ownership;

#### 10 (member id's with loan amt and loan status)
select member_id as Members,loan_amnt as loan, loan_status as Status
 from bank_dashboard 
 order by member_id;
 
 
 
 
 
 





