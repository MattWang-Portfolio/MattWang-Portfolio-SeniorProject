use emergency;
SET SQL_SAFE_UPDATES=0;


SELECT item FROM emergency.reason ORDER BY item_created_at_date DESC, item_created_at_time DESC LIMIT 1;

select * from message; 

select * from thing where status=1 
UNION select * from thing where status IS NULL
UNION select * from thing where status=2;

SELECT item FROM emergency.reason ORDER BY item_created_at_date DESC, item_created_at_time DESC LIMIT 1;

select * from thingnumber;
select * from thing;
select * from thingchart; 
select * from classificationchart; 
select * from statussort; 
select * from reason; 

SELECT t.department,t.id,t.status 
from thingnumber n,thingchart th,thing t 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND t.equipmentno = 'b'
order by t.status;

SELECT t.department,t.status,s.sort
from thing t
LEFT OUTER JOIN statussort s
on s.status = t.status order by s.sort;


INSERT INTO emergency.statussort (status,sort)VALUES (1,1);
INSERT INTO emergency.statussort (status,sort)VALUES (0,2);
INSERT INTO emergency.statussort (status,sort)VALUES (2,3);

SELECT c.classification,th.equipment,n.actual_number,t.id,t.status
FROM thingnumber n,thingchart th,thing t,classificationchart c 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.department='8WNCU' 
order by th.equipment;

SELECT c.classification,th.equipment,n.actual_number,t.id,t.status
FROM thingnumber n,thingchart th,thing t,classificationchart c 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.department='8w'
AND t.status=1
UNION
SELECT c.classification,th.equipment,n.actual_number,t.id,t.status
FROM thingnumber n,thingchart th,thing t,classificationchart c 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.department='8w'
AND t.status =2
UNION
SELECT c.classification,th.equipment,n.actual_number,t.id,t.status
FROM thingnumber n,thingchart th,thing t,classificationchart c 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.department='8w'
AND t.status IS NULL
order by 1 DESC,2,4;

SELECT c.classification,th.equipment,n.actual_number,t.id,t.status,s.sort
FROM thingnumber n,thingchart th,thing t,classificationchart c,statussort s
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.status= s.status
AND t.department='8wNCU'
order by c.classification DESC,th.equipment,s.sort;

SELECT c.classification,th.equipment,n.actual_number,t.id,t.status
FROM thingnumber n,thingchart th,thing t,classificationchart c 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND c.classificationno = th.classificationno 
AND t.department='8WNCU' 
group by t.status with rollup;

SELECT * FROM emergency.thing;
SELECT * FROM emergency.thingnumber;
SELECT * FROM emergency.classificationchart;
SELECT * FROM emergency.thingchart;
SELECT * FROM emergency.statussort;

INSERT INTO emergency.classificationchart (classificationno,classification)VALUES ("b","儀器");
INSERT INTO emergency.thingchart (equipmentno,classificationno,equipment) VALUES ("d","b","血氧機");
INSERT INTO emergency.thingchart (equipmentno,classificationno,equipment )VALUES ("e","b","血壓計");


SELECT department,count(IFNULL(status, 0)),equipmentno FROM emergency.thing 
WHERE status=2 AND equipmentno='a' AND department='8w'
union 
SELECT department,count(IFNULL(status, 0)),equipmentno FROM emergency.thing 
WHERE status=2 AND equipmentno='b' AND department='8w'
order by 1,3;

SELECT department,sendout_number,equipmentno FROM emergency.thingnumber 
WHERE equipmentno='a'
union 
SELECT department,sendout_number,equipmentno FROM emergency.thingnumber 
WHERE equipmentno='b'
order by 1,3;


SELECT department FROM emergency.thing 
WHERE status=2;

SELECT t.department,t.id,t.status 
from thingnumber n,thingchart th,thing t 
WHERE n.department = t.department 
AND n.equipmentno = t.equipmentno 
AND t.equipmentno = th.equipmentno 
AND t.equipmentno = 'a'
order by t.status,t.department;


SET SQL_SAFE_UPDATES=0;
delete from thing;
delete from thingnumber;


SHOW CHARACTER SET;