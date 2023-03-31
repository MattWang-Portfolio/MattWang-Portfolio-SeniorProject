use emergency;

-- green999 匯出檔案

select th.equipment,s.name as dep,
n.expected_number as 預計送出數量,
n.actual_number as 實際送出數量,
n.account,
n.thingnumber_created_at_date as created_at_date ,n.thingnumber_created_at_time as created_at_time
FROM thingnumber n,thingchart th,supportunit s
WHERE n.equipmentno = th.equipmentno
AND n.department = s.department
order by dep,n.equipmentno;  -- 物品總清單


select th.equipment,i.status,s.name as dep,
t.request_account,t.request_created_at_date,t.request_created_at_time,
t.send_account,t.send_created_at_date,t.send_created_at_time,
t.receive_account,t.receive_created_at_date,t.receive_created_at_time
FROM thing t,thingchart th,supportunit s,item_status i
WHERE th.equipmentno = t.equipmentno 
AND t.status = i.item_status_no
AND t.department = s.department
order by dep, th.equipmentno; -- 所有物品按鈕



select s.status,d.departmemt_name as transfer_dep ,m.transfer_account,m.content,
m.content_created_at_date,m.content_created_at_time,
e.departmemt_name as reply_dep,
m.reply_account,m.reply,m.reply_created_at_date,
m.reply_created_at_time
from message m join departmemtno d
on  m.transfer_depno = d.departmemt_no
join departmemtno e
on  m.department = e.departmemt_no
left outer join message_status s
on  m.status = s.status_no
order by transfer_depno,content_created_at_date DESC,content_created_at_time DESC;
-- 所有訊息


-- 舊的回覆訊息(回覆log)
select s.status,d.departmemt_name as transfer_dep ,m.transfer_account,m.content as send_message,
ml.account as reply_account,
ml.reply as old_reply,
ml.reply_created_at_date,
ml.reply_created_at_time,
-- m.content_created_at_date,m.content_created_at_time,
-- e.departmemt_name as reply_dep,
m.reply_account as final_reply_account,
m.reply as final_reply,
m.reply_created_at_date as 最後回覆日期,
m.reply_created_at_time as 最後回覆時間
-- m.reply_created_at_time
from message m join departmemtno d
on  m.transfer_depno = d.departmemt_no
join departmemtno e
on  m.department = e.departmemt_no
join  messagelog ml
on  m.id = ml.id
left outer join message_status s
on  m.status = s.status_no
order by transfer_depno,reply_created_at_date DESC,reply_created_at_time DESC;


-- select * from messagelog;

-- select * from message;

-- select * from peoplereturn; 

-- select * from people_return_chart;

select people_return_chart.name, peoplereturn.number,peoplereturn.people_created_at_date,
peoplereturn.people_created_at_time,peoplereturn.account
from peoplereturn
join people_return_chart
on  peoplereturn.position = people_return_chart.people_no
order by people_created_at_date DESC,people_created_at_time DESC;
-- 人力召回


select stage_chart.stage,stage.a as 30分內到院
,b as 60分內到院, c as 無法到場, d as 未回覆, e as 發送召回人數,
stage_created_at_date as 日期,stage_created_at_time as 時間,
account
from stage join stage_chart
on  stage.stagenumber   = stage_chart.stage_no
order by stage_created_at_date DESC,stage_created_at_time DESC;
-- 階段

select c1.position_name,c.name,c.account
from chiefassignment c join chief_name_get c1
on  c.position = c1.position;-- 長官

-- SHOW CREATE TABLE chiefassignment;
-- SHOW CREATE TABLE chief_name_get;
-- SHOW CREATE TABLE message;


-- alter table `chiefassignment` convert to character set utf8 collate utf8_general_ci;


-- select * from chief_name_get;

-- select * from message;
-- select * from message_status;
-- select * from departmemtno;

select c.name,b.task_class,a.event,IF(a.status=1,"完成","") as 任務狀態,a.account,a.mission_created_at_date
,a.mission_created_at_time
FROM task a,taskclass b,chiefget c
WHERE a.position = c.position_id
AND a.classification = b.task_no
order by a.position,a.classification;  -- 任務執掌









