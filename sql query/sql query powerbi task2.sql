sql query powerbi task 2
alter table sales_data add column profit_margin double precision;
update sales_data set profit_margin = (profit/salesamount)*100;
alter table customer_data add column age_group varchar
update customer_data set age_group = case
when age between 18 and 25 then 'Youth'
when age between 26 and 40 then 'Young Adult'
when age between 41 and 60 then 'Adult'
else'Senior'
end;
select region,category,subcategory,sum(salesamount)total_sale,sum(profit) total_profit,avg(profit_margin)from 
sales_data sd join product_data pd on sd.productid=pd.productid group by region,category,
subcategory;
select customerid,sum(salesamount) total_sales from sales_data group by customerid order by 
(total_sales) desc limit 10;

select productname,category,max(profit_margin) max_profit_margin from product_data pd join sales_data sd
on pd.productid= sd.productid group by productname,category;


