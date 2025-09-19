create database TableauProject;

use TableauProject;

Select * from `depression+student+dataset`;

Select Gender, count(*) from `depression+student+dataset`
group by Gender;

Update `depression+student+dataset` 
set Gender = 'F' where Gender = 'Female';
Update `depression+student+dataset` 
set Gender = 'M' where Gender = 'Male';

Select * from `depression+student+dataset`
where Gender is null;

select age,count(*) Count from `depression+student+dataset`
group by age 
order by age desc;

alter table `depression+student+dataset`
add Age_Group varchar(255);

update `depression+student+dataset`
set age_group =
case when Age between 18 and 24 then 'A1'
Else case when age between 25 and 30 then 'A2'
else 'A3' end end;

select age_group,count(*) from `depression+student+dataset`
group by age_group;

select * from INFORMATION_SCHEMA.columns where table_name 
LIKE '%depression%';

select `Academic Pressure`,count(*) from `depression+student+dataset`
group by `Academic Pressure` ORDER BY `Academic Pressure` ASC;

select `Study Satisfaction`,count(*) from `depression+student+dataset`
group by `Study Satisfaction`;

select `Sleep Duration`,count(*) from `depression+student+dataset`
group by `Sleep Duration`;

select `Dietary Habits`,count(*) from `depression+student+dataset`
group by `Dietary Habits`;


select `Have you ever had suicidal thoughts ?`,count(*) from `depression+student+dataset`
group by `Have you ever had suicidal thoughts ?`;

select `Study Hours`,count(*) from `depression+student+dataset`
group by `Study Hours`;

select `Financial Stress`,count(*) from `depression+student+dataset`
group by `Financial Stress`;

select `Family History of Mental Illness`,count(*) from `depression+student+dataset`
group by `Family History of Mental Illness`;

select `Depression`,count(*) from `depression+student+dataset`
group by `Depression`;

select * from `depression+student+dataset`;

ALTER TABLE `depression+student+dataset`
ADD Index_Column INT AUTO_INCREMENT,
ADD INDEX(Index_Column);

