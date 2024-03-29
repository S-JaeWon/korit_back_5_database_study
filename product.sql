insert into
	product_tb
    (product_id, product_name, product_size, product_color, product_price)
values
	(0, '모헤어 브이넥 앙고라 니트', 'S', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'M', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'L', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'XL', 'Black', 37400),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'S', 'white', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'M', 'white', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'L', 'white', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'XL', 'white', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'XL', 'white', 38000),
	(0, '버티칼 투웨이 골지 양털 집업', 'M', 'navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'L', 'navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'XL', 'navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'XXL', 'navy', 49000),
	(0, '반집업 꽈배기 카라니트', 'SS', 'white', 48000),
	(0, '반집업 꽈배기 카라니트', 'S', 'white', 48000),
	(0, '반집업 꽈배기 카라니트', 'M', 'white', 48000),
	(0, '반집업 꽈배기 카라니트', 'L', 'white', 48000),
	(0, '반집업 꽈배기 카라니트', 'XL', 'white', 48000),
    (0, '후드 MA-1 패딩 점퍼', 'S', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'M', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'L', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'XL', 'black', 62000);
    
    
select
	*
from
	product_tb;
    
# 색상별 수량
# 사이즈별 수량 

select
	product_color,
    count(*) as color_count
    #count(product_color) -> 이걸로도 가능 
from 
	product_tb
group by
	product_color;
    
select
	product_size,
    count(*) as size_count
from
	product_tb
group by
	product_size;



