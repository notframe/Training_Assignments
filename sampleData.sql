insert into admin values('001','john@gmail.com','john99');

insert into customer values('001','mike','mike@gmail.com','mike123','02-15-2020','manila','1234567');
insert into customer(customer_id, customer_name, email, password, address) values ('002','ryan','ryan@yahoo.com','1212ryan','makati');


insert into category values('001','electronics');
insert into category values('002','appliances');

insert into product values('001','smart phone','001','30000','p1','20');
insert into product values('002','refrigirator','002','45000','p2','');

insert into coupon values('001','new year coupon', '0.10','01-08-2021');
insert into coupon values('002','lunar new year coupon', '0.15','02-12-2022');

insert into cart values('001','001');
insert into cart values('002','002');

insert into cart_items values('001','001','001','001','1');
insert into cart_items values('002','002','002','002','1');

insert into order_data values('001','001','001','02-01-2021','07-01-2021','001',30000-(30000*0.1),'CREDIT');
insert into order_data(order_id,cart_id,customer_id,coupon_id,bill_amount,payment_method) values('002','002','002','002',38250,'COD');

select * from admin;
select * from customer;
select * from product;
select * from category;
select * from coupon;
select * from cart;
select * from cart_items;
select * from order_data;