/* 
1) Which bike is most expensive? What could be the motive behind 
pricing this bike at the high price?
*/

SELECT product_name ,list_price
FROM products
where list_price = (SELECT max(list_price ) FROM products);

select br.brand_name , pro.model_year,pro.product_name ,pro.list_price
from products pro 
join brands br 
 on br.brand_id = pro.brand_id
 where pro.product_name = 'Trek Domane SLR 9 Disc - 2018';

/*
2) How many total customers does BikeStore have? Would you consider 
people with order status 3 as customers substantiate your answer?  
*/
select count(customer_id) as number_of_customer from customers;

SELECT DISTINCT c.customer_id, c.first_name, c.last_name, o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_status = 3 ;

-- 3) How many stores does BikeStore have? 
select count(*) as number_of_store from stores;

-- 4) What is the total price spent per order?  
-- Hint: total price = [list_price] *[quantity]*(1-[discount]) 
select order_id, quantity, list_price, discount,
(list_price *quantity*(1-discount)) as total_price
 from order_items;
 
/*5) What’s the sales/revenue per store?  
Hint: Sales revenue = ([list_price] *[quantity]*(1-[discount]))  */
select order_id, quantity, list_price, discount,
(list_price *quantity*(1-discount)) as Sales_revenue
 from order_items;

-- 6) Which category is most sold?  
select ca.category_name , sum( ord.quantity) as total_sold
from categories ca 
join products pr on ca.category_id = pr.category_id
join order_items ord on ord.product_id = pr.product_id 
group by(pr.category_id) 
limit 1;

-- 7) Which category rejected more orders? 

--  8) Which bike is the least sold? 
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold ASC
LIMIT 1;

-- 9) What’s the full name of a customer with ID 259? 
select concat(first_name,' ',last_name) as full_name ,customer_id
from customers
where customer_id = 259 ;

/*
10) What did the customer on question 9 buy and when? What’s the 
status of this order? 
*/
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity,
    o.order_date,
    o.order_status
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
WHERE c.customer_id = 259;
