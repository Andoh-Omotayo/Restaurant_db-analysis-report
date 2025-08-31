## VIEW THE ORDERS DETAILS TABLE. WHAT IS THE DATE RANGE OF THE TABLE 
select*
from order_details;

## WHAT IS THE DATE RANGE OF THE TABLE?
select min(order_date), max(order_date) 
from order_details
order by order_date; 

## HOW MANY ORDERS WERE MADE WITHIN THIS DATE RANGE?
select count(distinct order_id)
from order_details; 


## HOW MANY ITEMS WERE ORDERED WITHIN THIS DATE RANGE?
select count(*) 
from order_details;

## WHICH ORDERS HAD THE MOST NUMBER OF ITEMS?
select order_id, count(item_id) numitems
from order_details
group by order_id
order by numitems desc;

## HOW MANY ORDERS HAD MORE THAN 12 ITEMS ?
select count(*)
from
(select order_id, count(item_id) numitems
from order_details
group by order_id
having numitems > 12) as numorders;
