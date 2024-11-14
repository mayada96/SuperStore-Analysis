select * from customer
select * from sales;

with F as(
select s.[Customer ID], c.[Customer Name], COUNT(s.[Order ID]) Frecuency, NTILE(10)over (order by COUNT([Order ID])) rank_F
from sales s 
join customer c on c.[Customer ID] = s.[Customer ID]
group by s.[Customer ID], c.[Customer Name]), M as(
select s.[Customer ID],c.[Customer Name], SUM(Sales) Montery, NTILE(10) over (order by SUM(Sales)) rank_M
from sales s
join customer c on c.[Customer ID] = s.[Customer ID]
group by s.[Customer ID], c.[Customer Name]), R as(
select [Customer ID], [Customer Name], DATEDIFF(day, Customer_last_order_date , (select MAX([Order Date]) last_date from sales)) Recency,
NTILE(10)over (order by DATEDIFF(day, Customer_last_order_date , (select MAX([Order Date]) last_date from sales)) DESC) rank_R
from (
select s.[Customer ID], c.[Customer Name], MAX([Order Date]) Customer_last_order_date
from sales s
join customer c on c.[Customer ID] = s.[Customer ID]
group by s.[Customer ID],c.[Customer Name])x)
select R.[Customer ID], R.[Customer Name], (rank_R+rank_F+rank_M) RFM, r.Recency,f.Frecuency,m.Montery
from R
join F on F.[Customer ID] = R.[Customer ID]
join M on M.[Customer ID] = F.[Customer ID]
order by RFM DESC, Recency , Frecuency DESC, Montery DESC;

