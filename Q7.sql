SELECT * FROM college.sales_tb;

select
	customer,
    sum(amount) as total_sales
from
	sales_tb
group by
	customer
order by
	total_sales,
    customer;