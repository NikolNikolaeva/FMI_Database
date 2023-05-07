USE pc;

--1--

SELECT maker,speed
FROM laptop JOIN product ON laptop.model=product.model
WHERE hd>=9;


--2--

SELECT laptop.model ,price
FROM laptop JOIN product ON laptop.model=product.model
WHERE maker='B'
UNION
SELECT price,pc.model 
FROM pc JOIN product ON pc.model=product.model
WHERE maker='B'
UNION
SELECT price,printer.model 
FROM printer JOIN product ON printer.model=product.model
WHERE maker='B'

--3--
SELECT maker
FROM laptop JOIN product ON laptop.model=product.model
EXCEPT
SELECT maker
FROM pc JOIN product ON pc.model=product.model

--4--

SELECT DISTINCT pc1.hd
FROM pc AS pc1 JOIN pc AS pc2 ON pc1.code!=pc2.code
WHERE pc1.hd=pc2.hd

--5--

SELECT DISTINCT pc1.model,pc2.model
FROM pc AS pc1 JOIN pc AS pc2 ON pc1.speed=pc2.speed AND pc1.ram=pc2.ram
WHERE pc1.model<pc2.model;

--6--

