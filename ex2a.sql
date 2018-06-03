/*Part A*/
create database Company;

use Company;

create table WORKER (w_id varchar(4) primary key, w_name varchar(20) not null,
 telephone varchar(12), e_mail varchar(35) unique);
 
create table COSTUMER (costumer_id varchar(4) primary key, costumer_name varchar(20) not null,
telephone varchar(12), e_mail varchar(35) unique, credit boolean);

create table WAREHOUSE (m_id int primary key, describes varchar(20) not null, fl varchar(1));

create table ITEM (p_id int(4) primary key, p_name varchar(15) not null, p_price double not null);

create table INVENTORY (in_id int primary key, m_id int not null, p_id int(4) not null, amount int, 
foreign key(m_id) references WAREHOUSE(m_id), foreign key(p_id) references ITEM(p_id));

create table ORDERS (o_id int primary key, costumer_id varchar(4), p_id int(4), w_id varchar(4),
amount int not null, date_of_order date not null, foreign key(costumer_id)references COSTUMER (costumer_id),
foreign key(p_id) references ITEM(p_id),foreign key(w_id) references WORKER(w_id));

insert into WAREHOUSE values(1,"spare parts","a");
insert into WAREHOUSE values(2,"assembly","b");
insert into WAREHOUSE values(3,"sales","c");

insert into ITEM values(1,"Computer p4", 1500);
insert into ITEM values(2,"Graphics Card", 250);
insert into ITEM values(3,"Computer p3", 1250);
insert into ITEM values(4,"Memory card", 100);
insert into ITEM values(5,"tablet computer",3000);
insert into ITEM values(6,"mouse",50);
insert into ITEM values(7,"keyboard",100);

insert into WORKER values(11,"Rinat Aelo","02-6764722","rinat.aelo@msmail.ariel.ac.il");
insert into WORKER values(12,"Buhnik Yakir","02-5850525","yakir.buhnik@msmail.ariel.ac.il");
insert into WORKER values(13,"Michali Galit","02-46361849","galit.michali@msmail.ariel.ac.il");

insert into COSTUMER values(1,"Derbikin Greg","03-9080486","grigory@msmail.ariel.ac.il", TRUE);
insert into COSTUMER values(2,"Ohaion Shay","03-5354231","shay.ohaio@msmail.ariel.ac.il", FALSE);
insert into COSTUMER values(3,"Dasa Meir","04-6595749","meir.dasa@msmail.ariel.ac.il",FALSE);

insert into ORDERS values(1,1,1,11,2,'2016/3/27');
insert into ORDERS values(2,2,3,11,3,'2016/3/25');
insert into ORDERS values(3,1,4,12,5,'2016/3/25');
insert into ORDERS values(4,3,4,12,2,'2016/3/25');
insert into ORDERS values(5,2,7,13,3,'2016/3/27');
insert into ORDERS values(6,1,7,13,2,'2016/3/26');
insert into ORDERS values(7,2,5,11,1,'2016/3/26');

insert into INVENTORY values(1,1,2,30);
insert into INVENTORY values(2,1,3,50);
insert into INVENTORY values(3,1,4,50);
insert into INVENTORY values(4,1,5,30);
insert into INVENTORY values(5,1,6,120);
insert into INVENTORY values(6,1,7,110);
insert into INVENTORY values(7,2,1,15);
insert into INVENTORY values(8,2,2,40);
insert into INVENTORY values(9,2,3,20);
insert into INVENTORY values(10,2,4,50);
insert into INVENTORY values(11,2,5,0);
insert into INVENTORY values(12,2,6,130);
insert into INVENTORY values(13,2,7,35);
insert into INVENTORY values(14,3,1,15);
insert into INVENTORY values(15,3,2,17);
insert into INVENTORY values(16,3,3,12);
insert into INVENTORY values(17,3,4,15);
insert into INVENTORY values(18,3,5,9);
insert into INVENTORY values(19,3,6,45);
insert into INVENTORY values(20,3,7,20);