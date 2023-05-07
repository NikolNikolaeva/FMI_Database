use movies;
use pc;
use ships;

--1--
Insert into MOVIESTAR (NAME,BIRTHDATE)
values ('Nicole Kidman',1967-06-20);

--2--
Delete from MOVIEEXEC where NETWORTH<30000000;

--3--
Delete from MOVIESTAR where ADDRESS Is NULL;

--4--
Insert into pc (code,model,speed,ram,hd,cd,price)
values (12,1100,2400,2048,500,'52x',299);
Insert into product (model,maker,type) values (1100,'C','pc');

--5--
Delete from pc where model=1100;

--6--
Delete from laptop where model IN
(Select DISTINCT p.model
from product as p join laptop as l on p.model=l.model
where maker NOT In 
(select DISTINCT maker from product where type='Printer'))

--7--
Update product set maker='A' where maker='B';

--8--
Update pc set price=price/2 , hd=hd+20;

--9--
Update laptop set screen=screen+1 where model IN
(select model from product where maker='B');

--10--


select *
from CLASSES;
select *
from product;

