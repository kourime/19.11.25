
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    status VARCHAR(50),
    total_amount NUMERIC(10, 2)
);

INSERT INTO orders (status, total_amount) VALUES
('Completed', 150.00),  
('Pending', 0.00),      
('Cancelled', 500.00),  
('Completed', 10.50),   
('Cancelled', -25.00),  
('Pending', 1000.00);   

SELECT 
    id,
    status,
    total_amount
FROM 
    orders
WHERE 
    total_amount <= 0 OR status = 'Cancelled';