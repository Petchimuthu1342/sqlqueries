create database pm; 
show databases;
show tables;

drop*/
drop table cm;
create database Petchimuthu; 
use Petchimuthu;
create table pm(PersonalId int auto_increment primary key,Firstname varchar(25),Lastname varchar(20),DOB date,Phoneno varchar(15)); 

//alter with rename,add//
alter table pm rename cm;
alter table cm add address varchar(40);
select *from cm;
insert into cm (Firstname,Lastname,DOB,Phoneno) value("petchimuthu","balaji","2002-04-13",9360841380);
insert into cm (Firstname,Lastname,DOB,Phoneno) value("bavani","indhumaathi","2006-02-04",8838269650);
insert into cm (Firstname,Lastname,DOB,Phoneno) value("kalyani","pooja","2009-11-27",7957202016);
insert into cm (Firstname,Lastname,DOB,Phoneno) value("sudhakaran","ramesh","2002-12-16",8811528580);
insert into cm (Firstname,Lastname,DOB,Phoneno) value("vijay","prabhakaran","2006-08-25",9360841380);
alter table cm add address varchar(40);

update*/
  update cm set address ="chennai" where PersonalId=1;
  update cm set address ="palyamkottai" where PersonalId=2;
  update cm set address ="cheranmahadevi" where PersonalId=3;
  update cm set address ="coimbatore" where PersonalId=4;    
  update cm set address ="chennai" where PersonalId=5;
  select *from cm;
  

    update cm set address ="veeravanallur" where PersonalId=5;
    
    cur date,time,interval*/
select curdate();
select curdate()-interval 20 day;
select curdate()+interval 15 day;
select current_time();
select current_user();

select avg(salary) from cm;
alter table cm add salary float(23);
alter table cm add Designation varchar(50);
 update cm set salary =15000 where PersonalId=1;
  update cm set salary =90000 where PersonalId=2;
  update cm set salary =25000 where PersonalId=3;
  update cm set salary =18000 where PersonalId=4;    
    update cm set salary =50000 where PersonalId=5; 
  select *from cm;
  
  update cm set Designation="support" where PersonalId=1;
  update cm set Designation="manager" where PersonalId=2;
  update cm set Designation="testing" where PersonalId=3;
  update cm set Designation="data analystic"  where PersonalId=4;    
  update cm set Designation="full stack" where PersonalId=5;
  select max(PersonalId)  from cm;
  select min(PersonalId)  from cm;                                                                      
  select count(PersonalId) from cm;
  select avg(salary) from cm;
  
  //logical
 select * from cm where salary not in(90000,18000);
 select * from cm where salary between 15000 and 18000;
 select * from cm where salary not between 15000 and 40000;
 select * from cm where salary between 18000 and 40000 and PersonalId not in (3,4);
 
 //like// 
 select * from cm where Firstname like 's%';
 select * from cm where Lastname like '%i';
 select * from cm where Firstname like '%b%';
 select * from cm where Lastname like '_am%';
  select * from cm where Firstname like 'p_%';
  select * from cm where Lastname like 'p__%'; 
    select * from cm where Firstname like 'k%i';
    
  //distinct//  
      select distinct Firstname from cm;
      select distinct salary from cm;
        select count(distinct salary) from cm;
        
        //between and order by//
        select * from cm where Firstname between "petchimuthu" and "sudhakaran" order by Firstname;
        select * from cm where Lastname  between "balaji" and "pooja" order by Lastname,salary;
              select * from cm where Firstname  between "kalyani" and "vijay" order by Firstname,Designation;
              
              //in and not in//
        select * from cm where Designation in ("full stack");
        select * from cm where Designation not in ("testing");
         select * from cm where Designation not in ("support","manager");
         
         and & in
select *from cm where PersonalId>3 and   designation in ("full stack");
         select * from cm where PersonalId<3 and  designation in ("manager");
             
    not null//
    select * from cm where salary is not null;
        select * from cm where address is null;
    
    <&>//
    select PersonalId,salary,if(PersonalId<=4,"employee id is greater than 4","employee id is less than 4")from cm;
    
    group by/
    select COUNT(Phoneno) as No_of_Phoneno from cm group by PersonalId;
    select COUNT(Designation) as No_of_Designation from cm group by Designation having No_of_Designation;
        select COUNT(Designation) as No_of_Designation from cm where PersonalId<5 group by Designation having No_of_Designation;
    select Designation from cm group by PersonalId;
    select PersonalId,Firstname from cm group by PersonalId;

Day 2
subquery max*/
  select *from cm;
  select PersonalId,Firstname from cm where salary=(select max(salary) from cm);
    select PersonalId,Lastname from cm where salary=(select max(salary) from cm);
  select PersonalId,address from cm where salary=(select max(salary) from cm);
  select PersonalId,Designation from cm where salary=(select max(salary) from cm);
    select PersonalId,Phoneno from cm where salary=(select max(salary) from cm);
    
    subquery min*/
      select PersonalId,Firstname from cm where salary=(select min(salary) from cm);
    select PersonalId,Lastname from cm where salary=(select min(salary) from cm);
  select PersonalId,address from cm where salary=(select min(salary) from cm);
  select PersonalId,Designation from cm where salary=(select min(salary) from cm);
    select PersonalId,Phoneno from cm where salary=(select min(salary) from cm);
    select *from cm where Firstname in(select Firstname from cm where Firstname like 'p%' );
        select *from cm where Firstname in(select Firstname from cm where Firstname like 'p%' and );
     select *from cm where Lastname in(select Lastname from cm where Lastname like '%i' );
     select *from cm where Designation in (select Designation from cm where Designation like '%r%');
      select *from cm where Firstname in(select Firstname from cm where Firstname like '_a%' );
           select *from cm where Designation in(select Designation from cm where Designation like 's_%' );
            select *from cm where Designation in(select Designation from cm where Designation like 'm__%' );
       select *from cm where Lastname in(select Lastname from cm where Lastname like 'r%h' );
    
  select PersonalId from cm where salary=(select max(salary)  from cm);
  select Designation,salary from cm where exists (select*from cm where salary>50000);
  select Designation,salary from cm where not exists (select*from cm where salary>15000);

inner join*/
create table studenttable(Roll_no int primary key, FirstName varchar(23),Address varchar(15),Phoneno bigint,Age int);
insert into studenttable values(1,"mani","Bangalore",8052266425,22);
insert into studenttable values(2,"ram","Veeravanallur",8693251470,20);
insert into studenttable values(3,"ravi","chennai",9360841380,21);
insert into studenttable values(4,"manikam","nellai",9563821740,19);
insert into studenttable values(5,"valli","erode",8693250147,20);

select * from studenttable;
   select *from cm;
   
   Inner Join*/
   select cm.PersonalId,studenttable.FIrstname
   from studenttable
   inner join cm
   on cm.PersonalId=studenttable.Roll_no
   order by cm.PersonalId;
    
 select studenttable.Roll_no,cm.Firstname
   from cm
   inner join studenttable
   on studenttable.Roll_no=cm.PersonalId
   order by studenttable.Roll_no ;
  

    
