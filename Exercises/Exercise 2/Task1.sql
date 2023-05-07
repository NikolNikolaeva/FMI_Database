USE movies;

--1--

SELECT NAME
FROM MOVIESTAR JOIN STARSIN ON NAME=STARNAME
WHERE MOVIETITLE='The Usual Suspects' AND GENDER='M';


--2--

SELECT STARNAME
FROM MOVIE JOIN STARSIN ON TITLE=MOVIETITLE
WHERE YEAR='1995' AND STUDIONAME='MGM';

--3--

SELECT DISTINCT NAME
FROM MOVIE JOIN MOVIEEXEC ON PRODUCERC#=CERT#
WHERE STUDIONAME='MGM';

--4--

SELECT m2.TITLE
FROM MOVIE AS m1, MOVIE AS m2
WHERE m1.TITLE='Star Wars' AND m2.LENGTH>m1.LENGTH;

--5--

SELECT m2.NAME
FROM MOVIEEXEC AS m1, MOVIEEXEC AS m2
WHERE m1.NAME='Stephen Spielberg' AND m2.NETWORTH>m1.NETWORTH;