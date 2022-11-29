select s.customer_id, s.date, si.product_id, si.qty, si.sale_price 
from sales_items si 
inner join sales s  
on si.sales_id=s.id ;