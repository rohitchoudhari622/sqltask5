select * from sales
select * from customer 
select * from product
	

select order_line, order_date, customer_id, product_id, sales from sales
select customer_id, customer_name, city from customer
select product_id, product_name from product
	
--inner join(sales and customer )
	
select s.order_line, s.order_date, c.customer_id, s.product_id, s.sales, c.customer_name, c.city from sales as s
inner join customer as c
on s.customer_id = c.customer_id

--inner join (sales and product)
select s.order_line, s.customer_id, s.sales, p.product_id, p.product_name from sales as s
inner join product as p
on s.product_id = p.product_id

select sum(s.sales), p.product_name from sales as s
inner join product as p
on s.product_id = p.product_id
group by p.product_name

--all column of product 
select s.order_line, s.customer_id, s.sales, p.* from sales as s
inner join product as p
on s.product_id = p.product_id

--get sales, discount and order_date from sales also get product_name and customer_name	
select sales, discount, order_date from sales
select product_name from product
select customer_name from customer

select s.sales, s.discount, s.order_date, p.product_name, c.customer_name from sales as s
inner join product as p
on s.product_id = p.product_id
inner join customer as c
on c.customer_id = s.customer_id

--group by, having, limit, join, sum and avg	
select product_id, order_id, sales quantity from sales
select product_name, product_id, catagory from product

select sum(s.sales), avg(s.quantity), p.product_name, p.category from sales as s
inner join product as p
on s.product_id = p.product_id
group by p.product_name, p.category
having sum(s.sales) > 500
order by avg(s.quantity) asc
limit 10
offset 10
	


	
--left join
	
select s.order_line, s.order_date, c.customer_id, s.product_id, s.sales, c.customer_name, c.city from sales as s
left join customer as c
on s.customer_id = c.customer_id

--left join (sales and product)
	
select s.order_line, s.customer_id, s.sales, p.product_id, p.product_name from sales as s
left join product as p
on s.product_id = p.product_id

select sum(s.sales), p.product_name from sales as s
left join product as p
on s.product_id = p.product_id
group by p.product_name

--all column of product 
select s.order_line, s.customer_id, s.sales, p.* from sales as s
left join product as p
on s.product_id = p.product_id

--get sales, discount and order_date from sales also get product_name and customer_name	
select sales, discount, order_date from sales
select product_name from product
select customer_name from customer

select s.sales, s.discount, s.order_date, p.product_name, c.customer_name from sales as s
left join product as p
on s.product_id = p.product_id
left join customer as c
on c.customer_id = s.customer_id

--group by, having, limit, join, sum and avg	
select product_id, order_id, sales quantity from sales
select product_name, product_id, catagory from product

select sum(s.sales), avg(s.quantity), p.product_name, p.category from sales as s
left join product as p
on s.product_id = p.product_id
group by p.product_name, p.category
having sum(s.sales) > 500
order by avg(s.quantity) asc
limit 10
offset 10

	
	
--right join
	
select s.order_line, s.order_date, c.customer_id, s.product_id, s.sales, c.customer_name, c.city from sales as s
right join customer as c
on s.customer_id = c.customer_id

--right join (sales and product)
	
select s.order_line, s.customer_id, s.sales, p.product_id, p.product_name from sales as s
right join product as p
on s.product_id = p.product_id

select sum(s.sales), p.product_name from sales as s
right join product as p
on s.product_id = p.product_id
group by p.product_name

--all column of product 
select s.order_line, s.customer_id, s.sales, p.* from sales as s
right join product as p
on s.product_id = p.product_id

--get sales, discount and order_date from sales also get product_name and customer_name	
select sales, discount, order_date from sales
select product_name from product
select customer_name from customer

select s.sales, s.discount, s.order_date, p.product_name, c.customer_name from sales as s
right join product as p
on s.product_id = p.product_id
right join customer as c
on c.customer_id = s.customer_id

--group by, having, limit, join, sum and avg	
select product_id, order_id, sales quantity from sales
select product_name, product_id, catagory from product

select sum(s.sales), avg(s.quantity), p.product_name, p.category from sales as s
right join product as p
on s.product_id = p.product_id
group by p.product_name, p.category
having sum(s.sales) > 500
order by avg(s.quantity) asc
limit 10
offset 10


--full join

select s.order_line, s.order_date, c.customer_id, s.product_id, s.sales, c.customer_name, c.city from sales as s
full join customer as c
on s.customer_id = c.customer_id

--full join (sales and product)
	
select s.order_line, s.customer_id, s.sales, p.product_id, p.product_name from sales as s
full join product as p
on s.product_id = p.product_id

select sum(s.sales), p.product_name from sales as s
full join product as p
on s.product_id = p.product_id
group by p.product_name

--all column of product 
select s.order_line, s.customer_id, s.sales, p.* from sales as s
full join product as p
on s.product_id = p.product_id

--get sales, discount and order_date from sales also get product_name and customer_name	
select sales, discount, order_date from sales
select product_name from product
select customer_name from customer

select s.sales, s.discount, s.order_date, p.product_name, c.customer_name from sales as s
full join product as p
on s.product_id = p.product_id
full join customer as c
on c.customer_id = s.customer_id

--group by, having, limit, join, sum and avg	
select product_id, order_id, sales quantity from sales
select product_name, product_id, catagory from product

select sum(s.sales), avg(s.quantity), p.product_name, p.category from sales as s
full join product as p
on s.product_id = p.product_id
group by p.product_name, p.category
having sum(s.sales) > 500
order by avg(s.quantity) asc
limit 10
offset 10





