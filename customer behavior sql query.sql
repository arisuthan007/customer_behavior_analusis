select * from information_schema.tables;
16:55:4
select age_group, sum(purchase_amount) as total_revenue from customer group by age_group order by total_revenue desc;
14:11:40
 select subscription_status, count(customer_id) as repeat_buyers from customer where previous_purchases > 5 group by subscription_status
14:10:06
 select subscription_status, count(customer_id) as repeat_buyers from customer where previous_purchase > 5 group by subscription_status
14:09:58
 select subscription_status, count(customer_id) as repeat_buyers from customer where previous_purchase>5 group by subscription_status
14:09:42
 select subscription_status, count(customer_id) as repeat_buyers from customer where previous_purchase>5 group by subscription_status
14:09:27
select subscription_status, count(customer_id) as repeat_buyers from customer where previous_purchase>5 group by subscription_status )
14:09:20
select subscribtion_status, count(customer_id) as repeat_buyers from customer where previous_purchase>5 group by subscription_status
14:08:44
with item_counts as(select category,item_purchased, count(customer_id) as total_orders, ROW_NUMBER() over(partition by category order by count(customer_id) desc) as item_rank from customer group by category,item_purchased ) select item_rank,category,item_purchased,total_orders from item_counts where item_rank<=3;
14:05:30
with item_counts as(select category,item_purchased, count(customer_id) as total_orders ROW_NUMBER() over(partition by category order by count(customer_id) desc) as item_rank from customer group by category,item_purchased ) select item_rank,category,item_purchased,total_orders from item_counts where item_rank<=3;
14:05:23
with item_counts as(select category,item_purchased, count(customer_id) as total_orders Row_Number() over(partition by category order by count(customer_id) desc) as item_rank from customer group by category,item_purchased ) select item_rank,category,item_purchased,total_orders from item_counts where item_rank<=3;
14:04:06
with item_counts as(select category,item_purchased, count(customer_id) as total_orders row_number() over(partition by category order by count(customer_id) desc) as item_rank from customer group by category,item_purchased ) select item_rank,category,item_purchased,total_orders from item_counts where item_rank<=3;
14:03:42
with customer_type as (select customer_id,previous_purchases, case when previous_purchases = 1 then 'new' when previous_purchases between 2 and 10 then'returning' else 'loyal' end as customer_segment from customer ) select customer_segment, count(*) as "number of customers" from customer_type group by customer_segment
13:57:11
with customer_city as (select customer_id,previous_purchases, case when previous_purchases = 1 then 'new' when previous_purchases between 2 and 10 then'returning' else 'loyal' end as customer_segment from customer ) select customer_segment, count(*) as "number of customers" from customer_type group by customer_segment
13:56:27
select * from customer limit 20;
13:56:04
with customer_city as (select customer_id,previous_purchases, case when previous_purchases = 1 then 'new' when previous_purchases between 2 and 10 then'returning' else 'loyal' end as customer_segment from customer ) select customer_segment, count(*) as "number of customers" from customer_type group by customer_segment
13:55:52
select * from customer limit 20;
13:55:20
with customer_city as (select customer_id,previous_purchases, case when previous_purchase = 1 then 'new' when previous_purchase between 2 and 10 then'returning' else 'loyal' end as customer_segment from customer ) select customer_segment, count(*) as "number of customers" from customer_type group by customer_segment
13:54:49
select item_purchased, ROUND(100 * SUM(CASE WHEN lower(discount_applied) = 'yes' THEN 1 ELSE 0 END)/COUNT(*),2) as discount_rate from customer group by item_purchased order by discount_rate desc limit 5;
13:47:19
select item_purchased, ROUND(100 * SUM(CASE WHEN discount_applied = 'yes' THEN 1 ELSE 0 END)/COUNT(*),2) as discount_rate from customer group by item_purchased order by discount_rate desc limit 5;
13:45:36
select * from customer limit 20;
