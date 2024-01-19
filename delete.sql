delete
from
	product_register_tb prt
where
	product_color_id in (select
							product_color_id
						from
							product_color_tb
						where
							product_color_name = 'Black'
                            or product_color_name = 'White');
    
	