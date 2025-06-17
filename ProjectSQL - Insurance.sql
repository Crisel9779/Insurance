Create database Supply_Chain;

-- KPI 1. ---> Number of Invoices by Account Executive  
SELECT distinct(`Account Executive`), COUNT(invoice_date) AS Invoice_Count  FROM invoice  GROUP BY `Account Executive` Order by Invoice_count Desc;


-- KPI 2. ---> Yearly Meeting Count
Select substring_index(meeting_date,"/",-1) AS Year, Count(meeting_date) AS "Meeting_Count" From Meeting Group By substring_index(meeting_date,"/",-1);

-- KPI 3. ---> Target, Achieve, New
Select * From Stage;


-- KPI 4. ---> Stage Funnel by Revenue
Select Stage, sum(revenue_amount) AS Total_Revenue From Opportunity Group By stage Order By Total_Revenue Desc;


-- KPI 5. ---> No of meeting By Account Executive
Select distinct(`Account Executive`), Count(meeting_date) AS "Meeting_Count" From Meeting Group By (`Account Executive`); 


-- KPI 6 ---> Open Oppty TOP 10
Select * From Opportunity Where Stage In("Qualify Opportunity", "Propose Solution") Order by revenue_amount DESC Limit 10;



















