USE pc;

--1--

SELECT DISTINCT *
FROM product
WHERE model NOT IN
(SELECT model
FROM laptop)
AND model NOT IN
(SELECT model
FROM pc)
AND model NOT IN
(SELECT model
FROM printer);

--2--

SELECT DISTINCT p.maker
FROM product AS p JOIN laptop ON p.model=laptop.model 
JOIN product AS p1 ON p.maker=p1.maker
JOIN printer ON p1.model=printer.model
WHERE laptop.model is not NULL AND printer.model is not NULL;

--3--

SELECT DISTINCT l1.hd
FROM laptop AS l1 JOIN laptop AS l2 ON l1.model!=l2.model
WHERE l1.hd=l2.hd

--4--

SELECT DISTINCT model
FROM pc
WHERE model NOT IN
(SELECT model
FROM product);


