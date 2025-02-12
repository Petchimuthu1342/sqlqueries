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
    
  

    