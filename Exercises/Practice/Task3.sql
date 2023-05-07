USE pc;

--1--

SELECT l1.model,l1.code,l1.screen
FROM laptop AS l1 JOIN laptop AS l2 ON l1.model=l2.model
WHERE (l1.screen=15 AND l2.screen=11) OR
(l1.screen=11 AND l2.screen=15);

--2--

SELECT DISTINCT P.model
FROM pc JOIN product AS P ON P.model=pc.model
WHERE PC.price<ANY
(SELECT price
FROM laptop JOIN product ON product.model=laptop.model
WHERE P.maker=maker)

--3--

SELECT DISTINCT P.model, AVG(price) AS avg_price,maker
FROM pc JOIN product AS P ON P.model=pc.model
GROUP BY P.model,maker
HAVING AVG(price)<
(SELECT TOP(1) price
FROM laptop JOIN product ON product.model=laptop.model
WHERE P.maker=maker
ORDER BY price)

--4--

SELECT code,maker,(SELECT COUNT(distinct n.model)
FROM PC as n
WHERE Pc1.price<=n.price) AS num
FROM pc AS Pc1 JOIN product as p ON p.model=Pc1.model;
