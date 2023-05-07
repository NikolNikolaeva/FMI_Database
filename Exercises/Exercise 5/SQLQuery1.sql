USE pc;

--1--

SELECT ROUND(AVG(speed),2) AS AvgSpeed
FROM pc

--2--

SELECT maker, AVG(screen) AS AvgScreen
FROM laptop JOIN product ON laptop.model=product.model
GROUP BY maker;

--3--

SELECT AVG(speed) AS AvgSpeed
FROM laptop
WHERE price>1000;

--4--

SELECT maker, ROUND(AVG(price),2) AS AvgPrice
FROM pc JOIN product ON pc.model=product.model
wHERE maker='A'
GROUP BY maker;

--5-- 

SELECT maker, AVG(price) AS AvgPrice
FROM(
SELECT model,price
FROM laptop 
UNION ALL
SELECT model,price
FROM pc) t
JOIN product ON t.model=product.model
WHERE maker='B'
GROUP BY maker;


--6--

SELECT speed, ROUND(AVG(price),2) AS AvgPrice
FROM pc 
GROUP BY speed;

--7--

SELECT maker, COUNT(*) AS number_of_pc
FROM pc AS p1 JOIN product ON p1.model=product.model
GROUP BY maker
HAVING COUNT(*) >=3;

--8--

SELECT maker,price
FROM pc AS p1 JOIN product ON p1.model=product.model
WHERE price>= ALL
(SELECT price
FROM pc);

SELECT maker,MAX(price) AS  AvgPrice
FROM pc AS p1 JOIN product ON p1.model=product.model
GROUP BY maker
HAVING MAX(price)>=ALL (SELECT price FROM pc);

--9--

SELECT speed,AVG(price) AS AvgPrice
FROM pc 
GROUP BY speed
HAVING speed>800;

--10--


