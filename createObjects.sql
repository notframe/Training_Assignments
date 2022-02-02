create table admin
(admin_id varchar(10) primary key,
 email varchar(50) unique,
 password varchar2(50) not null,
 admin_name varchar2(50))
 
create table customer
(customer_id varchar2(10) primary key,
 customer_name varchar2(50),
 email varchar2(50) unique,
 password varchar2(50) not null,
 register_date date default sysdate,
 address varchar2(50),
 contact_number number(15))

create table category
(category_id varchar2(10) primary key,
 category_name varchar2(50))
 
create table product
(product_id varchar2(10) primary key,
 product_name varchar2(50),
 category_id varchar2(10) references category(category_id) not null,
 product_price number(10,2),
 product_image varchar2(50),
 product_available_qty number(10))

create table coupon
(coupon_id varchar2(10) primary key,
 coupon_name varchar2(50),
 discount_value number(10),
 expiry_date date)

create table cart
(cart_id varchar2(10) primary key,
 customer_id varchar2(10) references customer(customer_id) not null)
 
create table cart_items
(cart_items_id varchar2(10) primary key,
 cart_id varchar2(10) references cart(cart_id) not null,
 customer_id varchar2(10) references customer(customer_id) not null,
 product_id varchar2(10) references product(product_id) not null,
 product_qty number(10))

create table order_data
(order_id varchar2(10) primary key,
 cart_id varchar2(10) references cart(cart_id) not null,
 customer_id varchar2(10) references customer(customer_id) not null,
 order_date date default sysdate,
 delivery_date date,
 coupon_id varchar2(10) not null,
 bill_amount number(10,2),
 payment_method varchar2(10) check(payment_method in ('COD','CREDIT','DEBIT','WALLET')))


