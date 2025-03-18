create database library;

use library;

create table branch(
branch_no int primary key,
manager_id int,
branch_address varchar(100),
contact_no varchar (100)

);

create table employee(
emp_id int primary key,
emp_name varchar(50),
position varchar (50),
salary decimal (2,10),
branch_no
int foreign key (branch_no) reference branch (branch_no) 


);
create table book(
books_ISBM INT primary key,
book_title varchar(50),
category varchar (50),
rental_price decimal (2,10),
status_ varchar ('yes','no'),
author_publisher varchar(50),

);

create table customer(
customer_id int primary key,
customer_name varchar(50),
customer_address varchar(100),
reg_date date


);
 create table issues_status(
 issue_id int primary key,
 issued_cust int,
 foreign key (issues_cust)references customer(customer_id),
 issued_book varchar (50),
 issued_name varchar(50),
 issuse_date date
 isbn_book ,
int foreign key (isbn_book) reference book(isbn)
 
 
 );
 
 
 create table returnstatus(
 return_id int primary key,
 return_cust varchar(50),
 return_book varchar(50),
 return_name varchar(50),
 return_date date,
 isbm_book2 
 int foreign key (isbm_book2) reference books(isbm) 
 
 );
 insert into branch(branh_no,manager_id,branch_address,contact_no)values
 (01,234,"trivandrum",234567890),
 (02,432,"kollam",345667890),
 (03,567,"kottayam",456677901),
 (04,678,"allapuzha",567890123),
 (05,789,"ernakulam",678990654),
 (06,890,"thrssur",787790676),
 (07,901,"palakkad",878799076),
 (08,650,"malappuram",989706543);
 
 
 select * from branch
 
 
 insert into employee(emp_id,emp_name,position,salary,branch_no)values
 
(555,"surash","manager",75000,01),
(630,"remash","officestaff",65000,02),
(750,"kathiresh","clerk",40000,03),
(453,"mahesh","staff",25000,04),
(873,"rathesh","assitantmanager",65000,05),
(567,"sumash","technician",30000,07),
(647,"ajesh","attender",20000,08);

select * from employee;


insert into book(books_ISBM,book_title,category,rentail_price,status_,author_publisher)values
(1001, 'The Alchemist', 'Fiction', 50, 'Yes', 'Paulo Coelho', 'HarperCollins'),
(1002, '1984', 'Dystopian', 60, 'Yes', 'George Orwell', 'Secker & Warburg'),
(1003, 'Inferno', 'Thriller', 70, 'No', 'Dan Brown', 'Doubleday'),
(1004, 'A Brief History of Time', 'Science', 80, 'Yes', 'Stephen Hawking', 'Bantam'),
(1005, 'The Great Gatsby', 'Classic', 55, 'No', 'F. Scott Fitzgerald', 'Scribner'),
(1006, 'Rich Dad Poor Dad', 'Finance', 90, 'Yes', 'Robert Kiyosaki', 'Warner Books'),
(1007, 'To Kill a Mockingbird', 'Classic', 65, 'Yes', 'Harper Lee', 'J.B. Lippincott'),
(1008, 'Sapiens', 'History', 85, 'No', 'Yuval Noah Harari', 'Harper');


select * from book;

insert into customer(customer_id,cutomer_name,customer_address,reg_date)values
(1, 'Rahul Sharma', 'Delhi, India', '2024-01-10'),
(2, 'Aisha Khan', 'Mumbai, India', '2024-02-15'),
(3, 'John Mathew', 'Bangalore, India', '2024-01-22'),
(4, 'Neha Verma', 'Kolkata, India', '2024-03-05'),
(5, 'Sandeep Roy', 'Chennai, India', '2024-02-28'),
(6, 'Priya Das', 'Pune, India', '2024-03-10'),
(7, 'Amit Gupta', 'Hyderabad, India', '2024-01-18'),
(8, 'Sneha Iyer', 'Ahmedabad, India', '2024-02-05');

select * from customer;

insert into retail_issues(issuse_id,issued_cust,issused_name,issuse_date,isbn_book)
(1, 1, 'The Alchemist', '2024-02-10', 1001),
(2, 2, '1984', '2024-02-12', 1002),
(3, 3, 'Inferno', '2024-02-20', 1003),
(4, 4, 'A Brief History of Time', '2024-02-25', 1004),
(5, 5, 'The Great Gatsby', '2024-02-28', 1005),
(6, 6, 'Rich Dad Poor Dad', '2024-03-02', 1006),
(7, 7, 'To Kill a Mockingbird', '2024-03-05', 1007),
(8, 8, 'Sapiens', '2024-03-08', 1008),
(9, 9, 'Think and Grow Rich', '2024-03-12', 1009),
(10, 10, 'Atomic Habits', '2024-03-15', 1010);


select * from retail_issues;



select book_title,category and rentail_price from book;

select emp_name, salary from employee order by salary desc;


SELECT Books.Book_title, Customer.Customer_name 
FROM IssueStatus 
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN 
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;

SELECT Category, count(book_title) AS Total_Books 
FROM Books 
GROUP BY Category;

select emp_name,position from employee where salary>50000;

select customer_name from cutomer where reg_date < '2022-01-01' and
cutomer_id= (select issued_cust from issused_status);

SELECT Branch_no,count(emp_id) as employee_count
FROM Employee 
GROUP BY Branch_no;

select cutomer_name from cutomer left join issuse_status on consume_id =issused_cust where issued_date between
 '2022-06-01' and '2022-06-30';

select book_title from books where book_title= 'history';

select branch_no, count (emp_no) as empolyee_count from branch_no group by having count (emp_id)>5;


select emp_name AS Manager_Name, Branch_address 
From Branch  inner join Employee E On Manager_Id = emp_id ;
 
 select customer_name from customer join  issue_status on customer_id = issued_cust
 join books on isbn_book = isbn where rental_price > 25 ;
 
 

