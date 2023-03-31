SET SQL_SAFE_UPDATES=0;
use emergency;

delete from messagelog;

delete from task;

delete from reason;

delete from message;

delete from thing;

delete from thingnumber;

Update chiefassignment set name = NULL,account=null;

Update task set status = NULL,account=null,mission_created_at_time=null,mission_created_at_date=null;

Update thingnumber set actual_number = NULL,account=null,thingnumber_created_at_date=NULL,
thingnumber_created_at_time=NULL;


delete from peoplereturn;

delete from stage;

delete from thingchart;

delete from classificationchart;

delete from supportunit;

delete from bloodnumber;


ALTER TABLE thing AUTO_INCREMENT = 1;

ALTER TABLE thingnumber AUTO_INCREMENT = 1;



OPTIMIZE TABLE thing;










