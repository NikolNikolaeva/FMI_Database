USE movies;

--1--

SELECT ADDRESS
FROM STUDIO
WHERE name='Disney';

--2--

SELECT BIRTHDATE
FROM MOVIESTAR
WHERE name='Jack Nicholson';

--3--

SELECT STARNAME
FROM STARSIN
WHERE MOVIEYEAR=1980 OR MOVIETITLE LIKE '%Knight%';

--4--

SELECT NAME
FROM MOVIEEXEC
WHERE NETWORTH>10000000;

--5--

SELECT NAME
FROM MOVIESTAR
WHERE GENDER='M' OR ADDRESS='Prefect Rd';