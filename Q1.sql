create database delivery_db;

use delivery_db;

create table delivery_tb (
	delivery_id int,
    delivery_company VARCHAR(20),
    delivery_man VARCHAR(15),
    delivery_address VARCHAR(100),
    consignee_name VARCHAR(15),
    consignee_phone VARCHAR(14),
    consignee_message Text
);

insert into delivery_tb (delivery_id, delivery_company, delivery_man, delivery_address, consignee_name, consignee_phone, consignee_message)
value (1, "대한통운", "김준일", "부산광역시 연제구 중앙대로 1001 부산광역시청", "김춘식", "010-8282 -5353", "안전하게 배 송해주세요");