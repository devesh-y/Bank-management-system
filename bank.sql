create database Bank_database;
use Bank_database;
create table customers(
cust_id int Primary Key NOT NULL ,
cust_name varchar(15) NOT NULL  ,
cust_DOB Date NOT NULL,
cust_phone varchar(10) NOT NULL,
cust_address varchar(100) NOT NULL,
br_id int NOT NULL,
foreign key (br_id) references branch(branch_id)
);
create table employees(
emp_id int primary key,
emp_name varchar(30) NOT NULL ,
emp_address varchar(100) NOT NULL,
emp_phone varchar(10) NOT NULL,
emp_DOB Date,
br_id int NOT NULL,
foreign key (br_id) references branch(branch_id)
);
create table loans(
loan_id int primary key,
loan_type varchar(30) NOT NULL,
amount float(20,6) NOT NULL,
time_duration int NOT NULL,
br_id int not NULL,
foreign key (br_id) references branch(branch_id)
);
create table accounts(
account_no char(12) primary key,
account_type varchar(30) NOT NULL,
balance float(20,6) NOT NULL,
customer_id int NOT NULL,
foreign key (customer_id) references customers(cust_id)
);
create table branch(
bank varchar(10) NOT NULL,
branch_id int primary key NOT NULL,
branch_name varchar(30) NOT NULL,
branch_address varchar(100) NOT NULL
);
create table bank(
bank_code int primary key,
bank_address varchar(100) NOT NULL,
bank_name varchar(30) NOT NULL
);
insert into bank(bank_code,bank_name,bank_address) values 
('1000','SBI',' 84 rajaji salai, chennai, tamilnadu 600 001'),
('1001', 'AXIs',' No 9, Block A, MG Road, Bengaluru, Karnataka,560001'),
('1002',' HDFC ','BPL HOUSE SUMANGALAM CO-OP HSG SOCIETYOPP. DRIVE-IN-THEATRE, BODAKDEO AHMEDABAD GUJARAT-380054'),
('1003', 'KOTAK ','21, 2Nd Avenue, M G Road, Shastri Nagar, Adayar, Chennai - 600020'),
('1004','PNB',' 1-2,Raghu Nath Nagar,M.G.Road,Agra 282002'),
('1005', 'ICICI' ,'Onyx Business Center 102, Upper Ground Floor Akshar Chowk, Old Padra Road'),
('1006', 'YES', 'Ground Floor, Syama Business Centre, Nh Bypass,Vytila, Kochi, Kerala 682019'),
('1007', 'IDFC ','2nd Flr, Oriflame Mall, Citadel Building Main Road Ranchi, Jharkhand - 834001');

insert into branch(bank,branch_name,branch_id,branch_address) values
("SBI","Jatusana" ,"10000023 ","Jatusana block-c, rewari, 123401"),
("PNB"," Delhi" ,"23423424" ,"CPPC IST FLOOR, PNB GURUDWARA ROAD, KAROL BAGH NEW DELHI DELHI (CENTRAL)Pincode - 110005"),
("AXIS","Rewari"," 23423445 ", "Plot No 6530/Y/1 & E, Circular Road,Bawal Chowk, Rewari, Haryana,123401"),
 ("AXIS","Kanpur"," 67645646 ","[18, 179, The Mall Road Opp PhoolBagh], kanpur"),
 ("PNB","Pune ","23243556 ","119/1 PLOT 1-B ANANTKRIPA SOCIETY, KOTHRUD PUNE MAHARASHTRA Pincode - 411038"),
("KOTAK", "Chennai", "57565677","Maharaja Tower, First Avenue, Ashok Nagar, Chennai, Tamilnadu Tamil Nadu Pincode: 600083"),
("IDFC","New delhi", "79069050","Plot No 92, Ground Floor, Pocket 1 Jasola New Delhi - 110025"),
("HDFC","Mumbai","24328748","KHATIJA MANSION,DR.ANANDRAO NAIR ROAD,OPP. NAIR HOSPITAL,MUMBAI CENTRAL,MAHARASHTRA 400008"),
 ("SBI","Jaipur", "85879849 ","P.B.NO.72, SANGANERI GATE, MAIN BRANCH, SANGANERI GATE, JAIPUR State: RAJASTHAN Pincode - 302001"),
("HDFC","Kota ","34753958", "039, 13 & 14. Main Jhalawar Road. Kota - 324007"),
 ("YES","Bhopal", "45654645", "YES BANK LTD., GR FLOOR, PLOT NO. 215, MP NAGAR, PHASE 1, BHOPAL, MADHYA PRADESH 462011"),
("ICICI"," Kurukshetra", "24234355","ICICI Bank Ltd., Sco 78, Sector 17,Kurukshetra Haryana,136118");
insert into accounts(customer_id,account_no,balance,account_type) values 
("21111222","423356348634","500000","Saving"),
("21111223","423356348656","564555"," Checking"),
("21111224","423356348637","234334"," Money market"),
("21111225","423356348638","234355","Retirement"),
("21111226","423356348639","457557","Saving"),
("21111227","423356348630","455550","Checking"),
("21111228","423356348611","324326","Saving"),
("21111229","423356348612","2430","Saving"),
("21111250","423356348613 ","34320","Checking"),
("21111251","423356348614","23430","Money market"),
("21111252","423356348615 ","3440","Retirement"),
("21111253","423356348516","454570","Saving");
insert into customers(br_id,cust_id,cust_name,cust_phone,cust_address,cust_DOB) values
("10000023","21111222"," Raghav Kapoor","9898977654"," House no.56,mg road,delhi","1990-04-21"),
("23423424","21111223"," Rajat Saini","9898977656"," Plot No 6830/Y/1 & E, Circular Road,Bawal Chowk,Rewari,Haryana","1991-05-07"),
("23423445","21111224","Mukesh kumar","9898977657" ,"[12, 56, MallRoad OppPhool Bagh],kanpur","1991-06-12"),
("67645646","21111225"," Pratap singh ","9898977658"," 119/1 PLOT 1-BANANTKRIPASOCIETY,KOTHRUDPUNE MAHARASHTRA","1992-07-24"),
("23243556","21111226"," Ajay garg","9898977659"," MaharajaTower, FirstAvenue, AshokNagar,Chennai,Tamilnadu","1993-08-20"),
("57565677","21111227"," Sudha kumari","9898977650"," Plot No 56,Ground Floor,Jasola NewDelhi","1991-08-24"),
("79069050","21111228"," Priyanka singh","9898977634"," KHATIJAMANSION, 52CYRUSAVENUE, DR.ANANDRAONAIR ROAD","1990-09-21") ,
("24328748","21111229"," Rahulsharma","9898977635"," P.B.NO.67,SANGANERIGATE,SANGANERIGATE, JAIPUR","1995-10-24"),
("85879849","21111250"," Ankitasingh","9898977636"," House no. 67,rohini sector 12", "1995-11-21"),
("34753958","21111251"," Meenakshi","9898977637"," 6530/Y/1 & E,Circular Road,Bawal Chowk,Rewari,Haryana","1995-12-24"),
("45654645","21111252"," Divyendu","9898977638", "[12, 9, MallRoad OppPhool Bagh],kanpur","1992-05-21"),
("24234355","21111253"," Nidhi singh","9898977639"," Plot No6830/Y/1 & E,Circular Road,Bawal Chowk,Rewari,Haryana","1992-03-03");
insert into loans(br_id,loan_id,loan_type,time_duration,amount)values
('10000023','12332556' ,'Payday loan' ,'6', '200000'),
('23423424','34576567' ,'Pawn shop loan', '16', '50000'),
('23423445','23324545' ,'Home equity' ,'24', '35000'),
('67645646','33355555' ,'Personal loan' ,'12', '25600'),
('23243556','55557868' ,'Credit-builder' ,'18' ,'250000'),
('57565677','11132455' ,'Debt consolidation', '7', '15000'),
('79069050','99945435' ,'Student loan' ,'14' ,'400000'),
('24328748','66231332' ,'Home equity' ,'24' ,'50000'),
('85879849','44231232' ,'Payday loan', '12' ,'35000'),
('34753958','77771213' ,'Credit-builder', '18', '25600'),
('45654645','11432333' ,'Home equity', '7' ,'250000'),
('24234355','57422222', 'Pawn shop loan', '14' ,'56000');

insert into employees(br_id,emp_id,emp_address,emp_name,emp_DOB,emp_phone) values
('10000023','11111222',' House no.34, rohini sector-12','Rajbir Singh','1995-03-24','8156349821'), 
('23423424','11111223' ,'Plot No. 56, first floor Pocket-1,Jasola ,New Delhi','Sanjay Rana','1996-05-21','8135575467'),
('23423445','11111224', '[12, 543, Mall Road Opp ,Phool Bagh],kanpur','Samay Raina','1995-01-24','8196335653'),
('67645646','11111225', '119/67 ,PLOT 1-C, ANANTKRIPA SOCIETY, KOTHRUD,PUNE, MAHARASHTRA','Vijay Chauhan','1996-02-21','7532456563'),
('23243556','11111226' ,'Maharaja Tower, FirstAvenue, Ashok Nagar,Chennai, Tamilnadu','Ayush Khan','1995-03-24','8100000064'),
('57565677','11111227', 'Plot No 56, GroundFloor, Pocket 1,Jasola New Delhi','Rajat Saini','1996-04-21','8600000456'),
('79069050','11111228','KHATIJA MANSION,52 CYRUS AVENUE,DR. ANANDRAO NAIR ROAD','Harsh Rajput','1995-05-07','9564345631'),
('24328748','11111229', 'P.B.NO.52,SANGANERI GATE,MAIN BRANCH,SANGANERIGATE, JAIPUR','Nitin Sharma','1996-06-12','9765422247'),
('85879849','11111250', 'House no. 34, rohini sector 12','Kritin Naagar','1995-07-24','7543686467'),
('34753958','11111251', 'Plot No 6830/Y/1 & E,Circular Road, BawalChowk, Rewari,Haryana','Mohit Kumar','1996-08-20','8258303542'),
('45654645','11111252', '[12, 56, Mall RoadOpp ,Phool Bagh],kanpur','Tarun Mishra','1995-08-24','8693605060'),
('24234355','11111253', '119/1 ,PLOT 1-B,ANANTKRIPASOCIETY, KOTHRUD,PUNE,MAHARASHTRA','Koshal Kumar','1996-09-21','9754219834'),
('57565677','11111254', 'Maharaja Tower, FirstAvenue, Ashok Nagar,Chennai, Tamilnadu','Vikas Gupta','1995-10-24','7643208755'),
('79069050','11111255', 'Plot No 56, GroundFloor, Pocket 1,Jasola, New Delhi','Rishal Singh','1996-11-21','9653217886'),
('24328748','11111256', 'KHATIJA MANSION,52 CYRUS AVENUE,DR. ANANDRAO NAIRROAD','Munesh Rao','1995-12-24','8532355751'),
('10000023','11111257', 'P.B.NO.67,SANGANERI GATE,SANGANERIGATE, JAIPUR','Vipin Gupta','1994-05-21','9974753298'),
('23423424','11111258', 'House no. 67, rohini sector 12','Ravikant Yadav','1993-03-24','7638975334'),
('23423445','11111259', '6530/Y/1 & E, Circular Road, Bawal Chowk,Rewari, Haryana','Raghu Singh','1994-05-05','8403713732'),
('67645646','11111260', '[12, 9, Mall Road Opp,Phool Bagh], kanpur','Sanjay vats','1994-03-28','9760142581');

select account_type,count(*) as numbers from accounts group by account_type;

select * from branch where branch_id in 
(SELECT br_id FROM employees GROUP
BY br_id HAVING COUNT(emp_id)>3);

select * from customers inner join accounts on accounts.customer_id=customers.cust_id and accounts.balance>50000 and accounts.account_type='saving';

select * from branch where bank='SBI';

Select * from employees where emp_address Like '%New Delhi%';

select * from customers where cust_name like 'A%';

select loan_type,loan_id,time_duration,amount from loans where amount=(select min(amount) from loans) or amount=(select max(amount) from loans);

select * from loans where amount=(select min(amount) from loans) or amount=(select max(amount) from loans);

select branch_name,branch_id,branch_address,bank from branch,loans where branch_id=br_id and loan_type='home equity';

