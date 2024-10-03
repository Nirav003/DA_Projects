-- Join the necessary tables to find the 
-- total quantity of each pizza category ordered.

select pizza_types.category as pizza_category, 
sum(order_details.quantity) as total_pizza
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_category
order by total_pizza desc;