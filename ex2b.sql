/*Part B*/
select avg(p_price)
from item;

select p_name 
from item 
where p_price > (select avg(p_price)from item);

select orders.o_id , item.p_name , orders.amount , (item.p_price*orders.amount)
from item inner join orders 
on item.p_id = orders.p_id;

select warehouse.describes, sum(inventory.amount)
from warehouse inner join inventory 
on warehouse.m_id = inventory.m_id 
group by inventory.m_id having sum(inventory.amount)>300;

select orders.o_id, worker.w_name, orders.date_of_order
from orders inner join worker 
on orders.w_id = worker.w_id
where orders.date_of_order < '2016/03/26';

select costumer.costumer_name
from (orders inner join costumer on orders.costumer_id = costumer.costumer_id)
inner join item on orders.p_id = item.p_id
where item.p_name="Computer p4" and item.p_name!="Computer p3";

select worker.w_name, count(orders.w_id) as o_num
from worker left join orders 
on worker.w_id = orders.w_id
group by orders.w_id limit 1;

set sql_safe_updates=0;
update item set p_price = p_price+500
where p_name = 'tablet computer';

select costumer_name, telephone, e_mail from costumer
union
select w_name, telephone, e_mail from worker;

select w_id, telephone
from worker
where w_name like '%A%' and w_name like '%B%';

