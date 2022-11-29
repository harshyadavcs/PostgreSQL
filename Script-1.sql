select p.vendor_id , p."date" ,pi2.product_id ,pi2.qty,
pi2.purchase_price 
from purchases p 
inner join purchase_items pi2 
on p.id=pi2.purchase_id ;