
use learnDB;

### Creating Products table

CREATE TABLE PRODUCT(
    ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    DESCRIPTION TEXT,
    CATEGORY VARCHAR(20) NOT NULL,
    PRICE INT NOT NULL
);


INSERT INTO PRODUCT
    (NAME,DESCRIPTION,CATEGORY,PRICE)
VALUES
    ("Cola",'','drink',110),
    ('Cookies','','food',200),
    ('Chokolate','','food',200),
    ('Milk Shake','','drink',130),
    ('Soda Lite','','drink',110),
    ('Apple Yogurt','','food',110),
    ('Banana Milk Shake','','drink',90),
    ('Mixed Fruit Salad','','food',180),
    ('Mango Lassi','','drink',120),
    ('Fruit candy','','food',40);


SELECT CATEGORY,sum(PRICE) as total_price
from product
GROUP BY CATEGORY ;  


SELECT 
    *,
    ROW_NUMBER() OVER (ORDER BY `PRICE`) AS RANKING
FROM product;



