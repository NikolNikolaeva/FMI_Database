USE pc;

--1--

SELECT DISTINCT maker
FROM product JOIN pc ON product.model=pc.model
WHERE speed>500;

--2--

SELECT code, model,price
FROM printer
WHERE price >= ALL
(SELECT price
FROM printer);

--3--

SELECT *
FROM laptop
WHERE speed < ALL
(SELECT speed
FROM pc);

--4--

SELECT  model,price
FROM pc 
WHERE price >= ALL
(SELECT price
FROM laptop)  
AND 
price >= ALL
(SELECT price
FROM printer)
AND 
price >= ALL
(SELECT price
FROM pc)
UNION 
SELECT  model,price
FROM laptop 
WHERE  price >= ALL
(SELECT price
FROM pc)
AND 
price >= ALL
(SELECT price
FROM printer)
AND 
price >= ALL
(SELECT price
FROM laptop)
UNION 
SELECT  model,price
FROM  printer 
WHERE price >= ALL
(SELECT price
FROM laptop)
AND 
price >= ALL
(SELECT price
FROM pc)
AND 
price >= ALL
(SELECT price
FROM printer);

--5--

SELECT maker
FROM product JOIN printer ON printer.model=product.model
WHERE price <= ALL
(SELECT price
FROM printer
WHERE color='y')
AND color='y';

--6--

SELECT DISTINCT maker
FROM product JOIN pc ON pc.model=product.model
WHERE ram <= ALL
(SELECT ram
FROM pc)
AND speed>=ANY
(SELECT speed
FROM pc);


