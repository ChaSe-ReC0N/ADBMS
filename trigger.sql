use ak;
create table product
(
pid int primary key,
p_name varchar(29),
price int,
qos int
);
create table sale(
s_id int primary key,
deli_addr varchar(30)
);
create table sale_item
(
s_id int,
pid int,
primary key(s_id,pid),
qty int,
foreign key(s_id) references sale(s_id),
foreign key(pid) references product(pid)
);
insert into product values(1,"tea",14,120);
#insert into product values(2,"coffee",10,234);
#insert into product values(3,"cream",12,87);

insert into sale values(11,"swaper");
#insert into sale values(3,"pker");
#insert into sale values(4,"stockly");

insert into sale_item values(11,1,121);
#insert into sale_item();
select * from sale_item;