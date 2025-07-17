use blinkit_sales_data;

SELECT * FROM customers;
desc customers;

select * from  products;
desc products;

select * from delivery_performance;
desc delivery_performance;

select * from  orders;
desc orders;

SELECT * FROM inventory;

SELECT * FROM marketing_performance;

SELECT * FROM marketing_performance where campaign_id = 547115 ;

# Converting Order_Date datatype from text to DATE

ALTER TABLE Orders ADD COLUMN Order_Date_Formatted DATE;
UPDATE Orders
SET Order_Date_Formatted = STR_TO_DATE(Order_Date, '%d/%m/%Y')
WHERE Order_Date IS NOT NULL;
ALTER TABLE Orders DROP COLUMN Order_Date;
ALTER TABLE Orders CHANGE COLUMN Order_Date_Formatted Order_Date DATE;

