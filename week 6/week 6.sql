USE order_management_db;
CREATE TABLE Review (
    Review_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Rating INT NOT NULL,
    Review_Text VARCHAR(500),
    Review_Date DATE NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES customer(customer_id),
    FOREIGN KEY (Product_ID) REFERENCES product(product_id),
    CHECK (Rating BETWEEN 1 AND 5)
);

INSERT INTO Review VALUES
('R101',1,1,5,'Excellent performance','2024-03-12'),
('R102',2,5,4,'Good battery life','2024-03-18'),
('R103',3,6,3,'Average sound quality','2024-03-20'),
('R104',4,1,4,'Good value for money','2024-04-02'),
('R105',1,4,5,'Very sharp display','2024-04-10'),
('R106',2,2,2,'Scroll wheel stopped working','2024-04-12'),
('R107',3,3,4,'Comfortable typing','2024-04-15');

SELECT * FROM Review;

UPDATE Review
SET Review_Text = 'Excellent product'
WHERE Review_ID = 'R101';

SELECT p.product_name, r.Rating, r.Review_Text
FROM product p
JOIN Review r ON p.product_id = r.Product_ID
WHERE p.product_id = 1;

SELECT c.customer_name, p.product_name, r.Rating, r.Review_Text
FROM Review r
JOIN customer c ON r.Customer_ID = c.customer_id
JOIN product p ON r.Product_ID = p.product_id;

SELECT p.product_name, COUNT(r.Review_ID) AS Total_Reviews
FROM product p
JOIN Review r ON p.product_id = r.Product_ID
GROUP BY p.product_id, p.product_name
ORDER BY Total_Reviews DESC
LIMIT 1;

SELECT * FROM Review
ORDER BY Review_Date DESC
LIMIT 5;

SELECT * FROM Review
WHERE Rating > 4;

SELECT p.product_name, AVG(r.Rating) AS Average_Rating
FROM product p
JOIN Review r ON p.product_id = r.Product_ID
GROUP BY p.product_id, p.product_name;

SELECT Product_ID, COUNT(*) AS Total_Reviews
FROM Review
GROUP BY Product_ID;

SELECT p.product_name, AVG(r.Rating) AS Average_Rating
FROM product p
JOIN Review r ON p.product_id = r.Product_ID
GROUP BY p.product_id, p.product_name
ORDER BY Average_Rating DESC;

SELECT p.product_name, AVG(r.Rating) AS Average_Rating
FROM product p
JOIN Review r ON p.product_id = r.Product_ID
GROUP BY p.product_id, p.product_name
HAVING AVG(r.Rating) > 4;

SELECT Rating, COUNT(*) AS Total
FROM Review
GROUP BY Rating
ORDER BY Rating DESC;

SELECT * FROM Review
WHERE Rating <= 2;

DELETE FROM Review
WHERE Review_ID = 'R107';

SELECT * FROM Review;