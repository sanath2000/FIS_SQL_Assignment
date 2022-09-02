create database SQLassignment
use SQLassignment

create table Clients
(
Client_id numeric(4) primary key,
Cname varchar(40) NOT NULL,
Addres varchar(30),
Email varchar(30) unique,
Phone numeric(10),
Business varchar(20) NOT NULL
)

select * from Clients


create table Departments
(
Deptno numeric(2) primary key,
Dname varchar(15) NOT NULL,
Loc varchar(20)
)


create table Employees
(
Empno numeric(4) primary key,
Ename varchar(20) NOT NULL,
Job varchar(15),
Salary numeric(7) constraint positivechk check(Salary>0),
Deptno numeric(2) references Departments(Deptno)
)

create table Projects
(
Project_ID numeric(3) primary key,
Descr varchar(30) NOT NULL,
Start_Date DATE,
Planned_End_Date DATE,
Actual_End_Date DATE,
Budget numeric(10) constraint positivebug check(Budget>0),
Client_id numeric(4) references Clients(Client_id)
)
select * from projects

alter table Projects
add constraint dateChk check(Actual_End_Date > Planned_End_Date)


create table EmpProjectTasks
(
Project_ID numeric(3)  foreign key references Projects(Project_ID),
Empno numeric(4) foreign key references Employees(Empno),
Start_Date Date,
End_Date Date,
Task varchar(25) not null,
Status varchar(15) not null
primary key(Project_ID,Empno)
)




insert into Clients values (1001,'ACME Utilities','Noida','contact@acmeutil.com',9567880032,'Manufacturing')

select * from clients
insert into Clients values (1002,'Trackon Consultants','Mumbai','contact@trackon.com',8734210090,'Consultant'),
 (1003,'MoneySaver Distributors','Kolkata','save@moneysaver.com',7799886655,'Reseller'),(1004,'Lawful Corp','Chennai','justice@lawful.com',9210342219,'Professional')

 Select * from clients

 insert into Departments values(10,'Design','Pune'),(20,'Development','Pune'),(30,'Testing','Mumbai'),(40,'Document','Mumbai')

 insert into Employees values(7001,'Sandeep','Analyst',25000,10),
 (7002,'Rajesh','Designer',30000,10),(7003,'Madhav','Developer',40000,20),(7004,'Manoj','',40000,20),
 (7005,'Abhay','Designer',35000,10),(7006,'Uma','Tester',30000,30),(7007,'Gita','Analyst',30000,40),
 (7008,'Priya','Tester',35000,30),(7009,'Nutan','Developer',45000,20),(7010,'Smita','Analyst',20000,10),(7011,'Anand','Project Mgr',65000,10)
 select * from Departments
 select * from Employees

insert into projects (project_id,descr,start_date,Planned_end_date,Actual_end_date,budget,client_id)values(401,'Inventory','2011-04-01','2011-10-01','2011-10-31',150000,1001)
insert into projects (project_id,descr,start_date,Planned_end_date,budget,client_id)values(402,'Accounting','2011-08-01','2012-01-01',50000,1002),
(403,'Payroll','2011-10-11','2011-12-31',75000,1003),
(404,'Contact Mgmt','2011-11-01','2011-12-11',150000,1001)
select * from projects


insert into Empprojecttasks values(401,7001,'01-Apr-11','20-Apr-11','System Analysis','Completed')
select * from empprojecttasks

insert into Empprojecttasks
values(401,7002,'21-Apr-11','30-May-11','System Design','Completed'),
(401,7003,'01-jun-11','15-jul-11','Coding','Completed'),
(401,7004,'18-jul-11','01-sep-11','Coding','Completed'),
(401,7006,'03-sep-11','15-sep-11','Testing','Completed'),
(401,7009,'18-sep-11','05-oct-11','Code Change','Completed'),
(401,7008,'06-oct-11','16-oct-11','testing','Completed'),
(401,7007,'06-oct-11','22-oct-11','documentation','Completed'),
(401,7011,'22-oct-11','31-oct-11','Sign off','Completed'),
(402,7010,'01-Aug-11','20-Aug-11','System Analysis','Completed'),
(402,7002,'22-Aug-11','30-sep-11','System Design','Completed'),(402,7004,'01-oct-11','20-Apr-11','Coding','In progress')
