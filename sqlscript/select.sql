use emergency;
SET SQL_SAFE_UPDATES=0;
SHOW GLOBAL VARIABLES LIKE '%secure%';

SELECT equipmentno,thing.department
FROM emergency.thing,emergency.supportunit
WHERE thing.department= supportunit.department
AND status=2 GROUP BY equipmentno order by supportunit.order_number;

SELECT thing.department,id,status 
from thing , supportunit
WHERE equipmentno = 'a'
AND thing.department = supportunit.department
AND status=2
order by supportunit.order_number ;

SELECT thing.department,id,status 
from thing , supportunit
WHERE equipmentno = 'a'
AND thing.department = supportunit.department
order by status,supportunit.order_number ;

SELECT equipmentno 
FROM emergency.thing
WHere status=1 GROUP BY equipmentno  ;

SELECT *
from   thing t;

ALTER TABLE thing ADD INDEX equipmentno_index(equipmentno);


show keys from thing;


ALTER TABLE  thing DROP INDEX  `equipmentno_index`;


select * from task;  
select * from task into outfile "C:\Users\Administrator\Desktop\green999_backup\任務執掌.csv";


select th.equipment,s.name as dep,n.expected_number,n.actual_number,n.account,
n.thingnumber_created_at_date as created_at_date ,n.thingnumber_created_at_time as created_at_time
FROM thingnumber n,thingchart th,classificationchart c,supportunit s
WHERE n.equipmentno = th.equipmentno
AND n.department = s.department
order by dep,n.equipmentno;


select th.equipment,t.status,s.name as dep,t.send_account,t.send_created_at_date,t.send_created_at_time
,t.request_account,t.request_created_at_date,t.request_created_at_time,
t.receive_account,t.receive_created_at_date,t.receive_created_at_time
FROM thing t,thingchart th,supportunit s
WHERE th.equipmentno = t.equipmentno
AND t.department = s.department
order by dep, th.equipmentno;

select * from message order by transfer_depno;  

set global secure_file_priv='';

select * from thing where status = 0;

select * from thingnumber;

select * from peoplereturn; 

select * from stage;

select * from thing; 
select count(*) from thing; 

select * from statussort; 

select * from thingchart; 

select * from classificationchart; 

select * from reason; 


select * from message; 


select * from messagelog;

select * from supportunit; 


select * from chiefassignment; 

select * from task; 

select * from bloodnumber; 

select * from stage; 

select * into outfile 
'C:\Apache Software Foundation\Tomcat 9.0\webapps\ROOT\green999\test\backup.txt'
from emergency.thingnumber;

insert into stage(stagenumber,a,b,c,d,e,stage_created_at_date,stage_created_at_time,account) 
select stagenumber,a,b,c,d,e,stage_created_at_date,stage_created_at_time,account 
from stage   order by id DESC limit 1;

insert into peoplereturn(position,number,account,people_created_at_date,people_created_at_time) 
select position,number,account,people_created_at_date,people_created_at_time
from peoplereturn  order by id DESC limit 1;

update emergency.stage SET a=4 , b=3 order by id DESC limit 1;

insert into emergency.stage (stagenumber) values (0);

show variables like '%secure%';

use emergency;
SELECT position,name FROM chiefassignment where position='c';

SELECT   department,id,status 
from thing
order by status,department ;


select * from thingnumber where id=415; 

select reply,reply_created_at_date,reply_created_at_time from message WHERE id=137 ;

select reply from message WHERE id=137 ; 

SELECT equipmentno ,status
FROM emergency.thing 
WHERE status=0 GROUP BY equipmentno ;

SELECT department,id,status 
from thing
WHERE equipmentno = 'zb'
order by status,department ;


insert into emergency.bloodnumber (bloodgroup) values ('Z');


SELECT department,id,status 
from thing 
WHERE equipmentno = 'x'
order by status,department ;

SELECT department,equipmentno,id,status 
from thing 
WHERE id = 37
order by status,department ; 

SELECT COUNT(*) FROM emergency.thing
WHERE status=0;


show variables like 'log_bin';

SELECT NULL IS NULL, NULL < NULL, NULL != NULL, NULL + 3;


--  ThingGet1 把這個寫成view
SELECT c.classification,th.equipment,n.actual_number,t.id,t.status,s.sort
FROM thingnumber n,thingchart th,thing t,classificationchart c,statussort s
WHERE n.department = t.department
AND n.equipmentno = t.equipmentno
AND t.equipmentno = th.equipmentno
AND c.classificationno = th.classificationno
AND t.status= s.status
AND t.department='b'
order by c.classificationno,th.equipmentno,s.sort;








select * from (
SELECT position,number FROM peoplereturn where position='a'
order by id DESC limit 1 ) a
union all 
select * from  (
SELECT position,number FROM peoplereturn where position='b'
order by id DESC limit 1 ) b
union all 
select * from (
SELECT position,number FROM peoplereturn where position='c'
order by id DESC limit 1 ) c
union all 
select * from  (SELECT position,number FROM peoplereturn where position='d'
order by id DESC limit 1 ) d
union all 
select * from  (SELECT position,number FROM peoplereturn where position='e'
order by id DESC limit 1 ) e;



SELECT equipmentno FROM emergency.thing WHERE (status=1 OR status=2) GROUP BY equipmentno;


SELECT equipmentno FROM emergency.thing WHERE (status=0 OR status=1) GROUP BY equipmentno;


SELECT t.department,t.id,t.status 
from   thing t
order by t.status,t.department;


SELECT t.department,t.id,t.status 
from   thing t
where t.equipmentno = 'r' 
order by t.status,t.department;


SELECT COUNT(*) 
FROM emergency.thing WHERE equipmentno='c' AND (status=1 OR status=2 OR status=3);


SELECT *
from   thing t
where t.equipmentno = 'r' 
order by t.status,t.department;


SELECT COUNT(*) 
FROM emergency.thing WHERE department='a' AND status=1;



SELECT equipmentno 
FROM emergency.thing 
WHERE status=2 GROUP BY equipmentno;


insert into emergency.messagelog 
(id,reply,reply_created_at_date,reply_created_at_time) 
values(?,?,?,?);


SELECT equipmentno 
FROM emergency.thing 
WHERE status=0 
GROUP BY equipmentno;

SELECT * from thing ;

SELECT department,id,status 
from thing 
WHERE equipmentno = 'b' 
AND (status = 2 OR status = 3) 
order by status,department ;


SELECT COUNT(*) FROM emergency.thing WHERE equipmentno='l' AND status=3 ;


SELECT c.classification,t.equipment,n.expected_number,n.actual_number,n.id,t.equipmentno 
FROM thingnumber n,thingchart t,classificationchart c
WHERE n.equipmentno = t.equipmentno 
AND c.classificationno = t.classificationno 
AND n.department='p';

SELECT department,transfer_depno,status FROM emergency.message 
ORDER BY status,reply_created_at_date DESC, reply_created_at_time DESC;

SELECT equipmentno 
FROM emergency.thing 
WHERE status=0 GROUP BY equipmentno;


SELECT thing.department,id,status 
from thing , supportunit 
WHERE equipmentno = 'a'
AND thing.department = supportunit.department 
order by status,supportunit.order_number;

SELECT ( @@key_buffer_size
+ @@query_cache_size
+ @@innodb_buffer_pool_size
+ @@innodb_additional_mem_pool_size
+ @@innodb_log_buffer_size
+ @@max_connections * ( @@read_buffer_size
+ @@read_rnd_buffer_size
+ @@sort_buffer_size
+ @@join_buffer_size
+ @@binlog_cache_size
+ @@thread_stack
+ @@tmp_table_size )
) / (1024 * 1024 * 1024) AS MAX_MEMORY_GB;











